class AddHotelsToTrips < ActiveRecord::Migration[7.0]
  def change
    add_reference :trips, :hotel
  end
end
