class Api::V1::ParticipantSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :trip
end
