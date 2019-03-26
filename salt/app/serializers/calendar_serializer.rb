class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :user_id
  has_many :recipes

  class RecipeSerializer < ActiveModel::Serializer
    attributes :id
  end

end
