class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :recipient_name
      t.string :recipient_email
      t.text :recipient_address
      t.string :sender_name
      t.string :sender_email
      t.text :sender_address
      t.text :body

      t.timestamps null: false
    end
  end
end
