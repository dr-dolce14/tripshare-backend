class RemoveLeaderFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :trips, :leader, :string
  end
end
