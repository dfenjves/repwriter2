class AlterColumnRepid < ActiveRecord::Migration
  def change
    change_column :letters, :rep_id,  :string
  end
end
