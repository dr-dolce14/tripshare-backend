class User < ApplicationRecord
   has_many :trips
   has_many :trips, through: :participants
end
