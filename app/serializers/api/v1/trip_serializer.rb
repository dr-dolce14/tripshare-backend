class Api::V1::TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :user_id
end
