class Ingredient < ApplicationRecord
    has_many :recipe_qty_ingredients
    has_many :recipes, through: :recipe_qty_ingredients
end
