class AddLandmarkToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :landmark, :string
  end
end
