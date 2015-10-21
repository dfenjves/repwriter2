class AddSenderCityStateZipToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :sender_city, :string
    add_column :letters, :sender_state, :string
    add_column :letters, :sender_zip, :string
  end
end
