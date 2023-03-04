class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :number_of_people
      t.datetime :order_time
      t.integer :total_price

      t.timestamps
    end
  end
end
