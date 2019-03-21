class Api::V001::IngredientsController < ApplicationController

  def index
    @ingredents = Ingredient.all 
    render json: @ingredents
  end

end
