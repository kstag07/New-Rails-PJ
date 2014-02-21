class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.integer :store_id
      t.string :store

      t.timestamps
    end
  end
end
