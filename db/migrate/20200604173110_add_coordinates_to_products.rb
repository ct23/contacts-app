class AddCoordinatesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :lat, :float,
    add_column :products, :lon, :float
  end
end
