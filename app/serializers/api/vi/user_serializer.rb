class Api::Vi::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic, :username, :password_digest, :email
end
