class RenameClimateToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :climate, :string
    rename_column :products, :climate, :color
  end
end
