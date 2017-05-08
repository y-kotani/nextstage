class CreateHotpeppers < ActiveRecord::Migration
  def change
    create_table :hotpeppers do |t|
      t.string  :name
      t.string  :location
      t.string  :open_time
      t.integer :price
      t.string  :URL
      t.integer :tel
      t.text    :review
      t.integer :rate
      t.timestamps null: false
    end
  end
end
