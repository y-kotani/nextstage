class ChangeDescriptionOfDbtests1 < ActiveRecord::Migration
def self.up
  change_column :restaurants, :longitude, :decimal,precision: 11, scale: 8
end

def self.down
  change_column :restaurants, :longitudes, :float
end
end
