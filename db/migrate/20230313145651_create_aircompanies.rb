class CreateAircompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :aircompanies do |t|
      t.string :name
      t.timestamps
    end
    add_reference :flights, :aircompany
  end
end
