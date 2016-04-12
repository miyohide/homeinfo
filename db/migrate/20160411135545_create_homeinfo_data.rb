class CreateHomeinfoData < ActiveRecord::Migration
  def change
    create_table :homeinfo_data do |t|
      t.string :dateandtime
      t.references :temperature
      t.references :humidity

      t.timestamps null: false
    end
  end
end
