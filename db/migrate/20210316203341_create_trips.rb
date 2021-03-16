class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.string :leader

      t.timestamps
    end
  end
end
