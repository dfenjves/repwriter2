class AddSentRepIdToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :sent, :boolean
    add_column :letters, :rep_id, :integer
  end
end
