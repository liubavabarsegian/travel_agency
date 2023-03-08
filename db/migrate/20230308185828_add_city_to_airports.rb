class AddCityToAirports < ActiveRecord::Migration[7.0]
  def change
    add_reference :airports, :city
  end
end
