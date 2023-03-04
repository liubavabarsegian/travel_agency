class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :airway_company
      t.datetime :departure_time
      t.integer :price
      t.boolean :meal_included
      t.integer :flight_duration

      t.timestamps
    end
  end
end
