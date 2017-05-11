class ChangeDescriptionOfDbtests3 < ActiveRecord::Migration
def self.up
  change_column :restaurants, :longitude, :decimal, precision: 13, scale: 10
end

def self.down
  change_column :restaurants, :longitude, :decimal, precision: 11, scale: 8
end
end
