class RecipeCalendar < ApplicationRecord
    belongs_to :calendar
    belongs_to :recipe
end
