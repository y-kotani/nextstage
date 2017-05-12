class ChangeColumnToUser6 < ActiveRecord::Migration
def self.up
  change_column :restaurants, :tel, :string
end

def self.down
  change_column :restaurants, :tel, :integer
end
end
