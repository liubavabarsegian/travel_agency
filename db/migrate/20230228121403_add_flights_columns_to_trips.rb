class AddFlightsColumnsToTrips < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :departure_flight
    add_reference :flights, :arrival_flight
  end
end
