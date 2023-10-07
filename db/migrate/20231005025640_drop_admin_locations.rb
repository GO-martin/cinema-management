class DropAdminLocations < ActiveRecord::Migration[7.0]
  def change
    drop_table :admin_locations
  end
end
