class AddGpStoHomeinfoData < ActiveRecord::Migration
  def change
    add_column :homeinfo_data, :ido, :float
    add_column :homeinfo_data, :keido, :float
  end
end
