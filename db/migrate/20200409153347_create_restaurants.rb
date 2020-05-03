class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.string :phone
      t.float :lat
      t.float :long
      t.string :address
      t.string :price
      t.string :kind_of_food
      t.integer :distance

      t.timestamps
    end
  end
end


