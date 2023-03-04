class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.boolean :has_pool
      t.integer :number_of_stars
      t.boolean :cleaning_included
      t.integer :price_for_a_person

      t.timestamps
    end
  end
end
