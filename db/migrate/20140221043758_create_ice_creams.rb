class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.integer :store_id
      t.string :store
      t.string :flavor

      t.timestamps
    end
  end
end
