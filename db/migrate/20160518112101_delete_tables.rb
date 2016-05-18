class DeleteTables < ActiveRecord::Migration
  def change
    drop_table :humidities
    drop_table :temperatures
  end
end
