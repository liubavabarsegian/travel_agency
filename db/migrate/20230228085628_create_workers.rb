class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.date :birthday_date
      t.integer :salary
      t.string :phone
      t.timestamps
    end
  end
end
