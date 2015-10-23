class AddLatitudeAndLongitudeToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :latitude, :float
    add_column :letters, :longitude, :float
  end
end
