class ChangeDescriptionOfDbtests4 < ActiveRecord::Migration
def self.up
  change_column :restaurants, :latitude, :decimal, precision: 12, scale: 10
end

def self.down
  change_column :restaurants, :latitude, :decimal
end
end
