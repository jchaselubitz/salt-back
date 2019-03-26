class Api::V001::IngredientsController < ApplicationController
  before_action :find_ingredient #only: [:show, :edit, :update, :destroy]

  def index
    @ingredents = Ingredient.all 
    render json: @ingredents
  end

  def update
    @ingredient.update(ingredient_params)
    if @ingredient.valid?
      render json: @ingredient
    else
      render json: "ingredient parameters invalid"
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:id, :name, :category, :image, :have)
  end

  def find_ingredient
    @ingredient = Ingredient.find_by(id: params[:id])
  end


end


