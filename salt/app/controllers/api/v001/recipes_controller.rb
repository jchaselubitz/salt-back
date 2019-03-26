class Api::V001::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all 
    render json: @recipes
  end

  def create 
    @user = User.find_by(email: params[:user])
    @recipe = Recipe.new(recipe_params,user_id: @user.id)
    
    if @recipe.valid?
      @recipe.save
      # render json: @recipe
      print("RECIPE COOKED")
    else
      # render json: "recipe parameters invalid"
      print("NO RECIPE")
    end
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
