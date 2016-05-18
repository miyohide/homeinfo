class AddValueColumns < ActiveRecord::Migration
  def change
    add_column :homeinfo_data, :temperature, :string
    add_column :homeinfo_data, :humidity, :string
  end
end
