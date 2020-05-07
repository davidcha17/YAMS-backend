class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end

