class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string  :name
      t.float :latitude
      t.float :longitude
      t.string  :adress
      t.string  :open_time
      t.integer :budget
      t.string  :url
      t.integer :tel
      t.text    :review
      t.integer :rate
      t.timestamps null: false
    end
  end
end
