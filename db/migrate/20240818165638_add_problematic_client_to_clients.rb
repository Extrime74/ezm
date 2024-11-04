class AddProblematicClientToClients < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :problematic_client, :boolean, default: false
  end
end
