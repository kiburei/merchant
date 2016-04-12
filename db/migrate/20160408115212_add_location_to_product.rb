class AddLocationToProduct < ActiveRecord::Migration
  def change
    add_column :products, :location, :string
    add_column :products, :string, :string
  end
end
