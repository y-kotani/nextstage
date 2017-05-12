class ChangeDatatypeOpentimeOfRestaurants1 < ActiveRecord::Migration
def change
    rename_column :restaurants, :review, :imaege
  end
end