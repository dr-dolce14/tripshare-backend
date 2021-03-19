class User < ApplicationRecord
    has_many :trips, through: :user_trips 
end
