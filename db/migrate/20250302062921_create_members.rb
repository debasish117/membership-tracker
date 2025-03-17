class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.text :address
      t.integer :gender

      t.timestamps
    end
  end
end
