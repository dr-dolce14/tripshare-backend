class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic, :username, :password_digest, :email
end
