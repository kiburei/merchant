class RemoveJointFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :joint, :string
  end
end
