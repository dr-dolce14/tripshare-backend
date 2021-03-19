class Trip < ApplicationRecord
    has_many :users, through: :user_trips
end
