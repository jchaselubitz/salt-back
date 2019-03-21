class Calendar < ApplicationRecord
    belongs_to :user
    has_many :recipe_calendars
    has_many :recipes, through: :recipe_calendars

end
