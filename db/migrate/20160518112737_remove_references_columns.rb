class RemoveReferencesColumns < ActiveRecord::Migration
  def change
    remove_column :homeinfo_data, :temperature_id
    remove_column :homeinfo_data, :humidity_id
  end
end
