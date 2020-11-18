class RenameRestauratToRestaurant < ActiveRecord::Migration[6.0]
  def change
    rename_table :restaurats, :restaurants
  end
end
