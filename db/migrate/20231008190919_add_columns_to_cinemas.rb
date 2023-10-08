class AddColumnsToCinemas < ActiveRecord::Migration[7.0]
  def change
    add_column :cinemas, :name, :string
    add_column :cinemas, :description, :text
    add_reference :cinemas, :locations, foreign_key: true
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
