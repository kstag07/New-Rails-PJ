class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :ice_cream_brands
      t.string :flavor
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
