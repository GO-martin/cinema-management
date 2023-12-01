class RemoveLocationsFromCinemas < ActiveRecord::Migration[7.0]
  def change
    remove_reference :cinemas, :locations, null: false, foreign_key: true

    add_reference :cinemas, :location, foreign_key: true
  end
end
