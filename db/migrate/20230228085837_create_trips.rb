class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.date :departure_date
      t.date :arrival_date
      t.string :meal

      t.timestamps
    end
  end
end
