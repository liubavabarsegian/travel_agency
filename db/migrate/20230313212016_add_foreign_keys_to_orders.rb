class AddForeignKeysToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :client
    add_reference :orders, :trip
    add_reference :orders, :worker
  end
end
