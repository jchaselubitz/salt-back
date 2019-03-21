class User < ApplicationRecord
    has_many :calendars
    has_many :recipes

end
