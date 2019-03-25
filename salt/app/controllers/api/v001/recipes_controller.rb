class Api::V001::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all 
    render json: @recipes
  end

  def create 
    @recipe = Recipe.create(name: recipe_params[:name], instructions: recipe_params[:instructions], image: recipe_params[:image])

    # params[:ingredients].map do |item|  
    #   @ingredient = Ingredient.find_or_create_by(name: item[:ingredient_name])
    #   @ingredient.update(category: item[:ingredient_category], have: false)
    #   @recipe_qty_ingredient = RecipeQtyIngredient.create(recipe_id: @recipe.id, ingredient_id: @ingredient.id, qty: item[:qty], unit: item[:unit])
    # end 
    
    byebug
  end 

  private 

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :image)
  end 

end
