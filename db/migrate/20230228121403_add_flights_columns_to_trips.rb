class AddFlightsColumnsToTrips < ActiveRecord::Migration[7.0]
  def change
    add_reference :trips, :departure_flight, foreign_key: { to_table: :flights }
    add_reference :trips, :arrival_flight, foreign_key: { to_table: :flights }
  end
end
