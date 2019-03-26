class Api::V001::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all 
    render json: @recipes
  end

  def create 
   
    @recipe = Recipe.new(recipe_params)
    
    if @recipe.valid?
      @recipe.save
      params[:ingredients].map do |item|  
        @ingredient = Ingredient.find_or_create_by(name: item[:ingredient_name])
        @ingredient.update(category: item[:ingredient_category], have: false)
        @recipe_qty_ingredient = RecipeQtyIngredient.create(recipe_id: @recipe.id, ingredient_id: @ingredient.id, qty: item[:qty], unit: item[:unit])
      end 
      render json: @recipe
      # print(@recipe)
    else
       render json: "recipe parameters invalid"
      # print("NO RECIPE")
    end
   
  end 

  private 

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :image, :user_id)
  end 

end
