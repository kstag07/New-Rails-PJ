class CreateStoreIceCreams < ActiveRecord::Migration
  def change
    create_table :store_ice_creams do |t|
      t.integer :store_id
      t.string :store
      t.integer :ice_cream_id
      t.string :ice_cream

      t.timestamps
    end
  end
end
