class ChangeDescriptionOfDbtests < ActiveRecord::Migration
def self.up
  change_column :restaurants, :latitude, :decimal
  change_column :restaurants, :longitude, :decimal
end
 
def self.down
  change_column :restaurants, :latitude, :float
  change_column :restaurants, :longitudes, :float
end
end
