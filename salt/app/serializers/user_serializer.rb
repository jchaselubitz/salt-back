class UserSerializer < ActiveModel::Serializer
  attributes :fullname, :email, :image, :id
end
