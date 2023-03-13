class AddFlightsColumnsToTrips < ActiveRecord::Migration[7.0]
  def change
    add_reference :trips, :departure_flight
    add_reference :trips, :arrival_flight
  end
end
