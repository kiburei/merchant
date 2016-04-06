class AddHoodToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :hood, :string
  end
end
