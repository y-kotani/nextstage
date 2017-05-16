class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :rate
      t.integer :OK_NOT
      t.text :review
      t.timestamps
    end
  end
end