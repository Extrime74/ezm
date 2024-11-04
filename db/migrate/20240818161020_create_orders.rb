class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.string :device_type
      t.string :device_brand
      t.string :device_model
      t.string :device_serial
      t.string :device_set
      t.string :device_condition
      t.string :malfunction
      t.string :estimated_cost
      t.text :comment

      t.timestamps
    end
  end
end
