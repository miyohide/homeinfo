class AddRunCounttoHomeinfoData < ActiveRecord::Migration
  def change
    add_column :homeinfo_data, :run_count, :string
  end
end
