class Api::V1::UserTripSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :trip
end
