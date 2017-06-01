class AddPursesToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :local_purse, :float, :default => 0.1
    add_column :matches, :tie_purse, :float, :default => 0.1
    add_column :matches, :visitor_purse, :float, :default => 0.1
    add_column :matches, :total_purse, :float, :default => 0.1
  end
end
