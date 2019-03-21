class Recipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_qty_ingredients
    has_many :ingredients, through: :recipe_qty_ingredients
    has_many :recipe_calendars
    has_many :calendars, through: :recipe_calendars

end
