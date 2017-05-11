class ChangeDescriptionOfDbtests5 < ActiveRecord::Migration
def self.up
  change_column :restaurants, :budget, :string
end

def self.down
  change_column :restaurants, :budget, :integer
end
end
