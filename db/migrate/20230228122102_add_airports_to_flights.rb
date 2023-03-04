class AddAirportsToFlights < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :departure_airport, foreign_key: { to_table: :flights }
    add_reference :flights, :arrival_airport, foreign_key: { to_table: :flights }
  end
end