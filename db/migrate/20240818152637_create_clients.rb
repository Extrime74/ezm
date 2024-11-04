class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.boolean :loyal_client, default: false

      t.index :first_name
      t.index :last_name
      t.index :phone_number
      t.index :id

      t.timestamps
    end
  end
end