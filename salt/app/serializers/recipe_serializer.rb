class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :image
 
  has_many :ingredients


    class IngredientSerializer < ActiveModel::Serializer
      attributes :id, :name, :category, :have, :recipe_qty_ingredients
      # has_many :recipe_qty_ingredients
    end 



end
