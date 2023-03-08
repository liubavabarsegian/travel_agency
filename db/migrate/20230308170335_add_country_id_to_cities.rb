class AddCountryIdToCities < ActiveRecord::Migration[7.0]
  def change
    add_reference :cities, :country
  end
end
