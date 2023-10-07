class AddAtributesToLocations < ActiveRecord::Migration[7.0]
  def self.up
    change_column_null :locations, :name, false
  end
end
