class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.string :temperature

      t.timestamps null: false
    end
  end
end
