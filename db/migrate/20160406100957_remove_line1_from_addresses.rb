class RemoveLine1FromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :line1, :string
  end
end
