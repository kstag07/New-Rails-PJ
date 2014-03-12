class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.integer :store_id
      t.string :store
      add_column :flavor

      t.timestamps
    end
  end
end
