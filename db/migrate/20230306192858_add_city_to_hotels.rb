class AddCityToHotels < ActiveRecord::Migration[7.0]
  def change
    add_reference :hotels, :city
  end
end
