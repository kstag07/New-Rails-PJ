class AddFlavorToIceCream < ActiveRecord::Migration
  def change
    add_column :ice_creams, :flavor, :string
  end
end
