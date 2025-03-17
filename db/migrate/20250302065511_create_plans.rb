class CreatePlans < ActiveRecord::Migration[7.2]
  def change
    create_table :plans do |t|
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.integer :member_id

      t.timestamps
    end
    add_index :plans, :member_id
  end
end
