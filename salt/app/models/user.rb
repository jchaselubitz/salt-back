class User < ApplicationRecord
    has_many :calendars
    has_many :recipes

    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }

end
