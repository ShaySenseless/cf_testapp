class RenameClimateToProduct < ActiveRecord::Migration
  def change
    rename_column :products, :climate, :color
  end
end
