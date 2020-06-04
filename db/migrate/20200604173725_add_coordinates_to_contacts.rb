class AddCoordinatesToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :lat, :float
    add_column :contacts, :lon, :float
  end
end
