class UserSerializer < ActiveModel::Serializer
  attributes :fullname, :email, :image
end
