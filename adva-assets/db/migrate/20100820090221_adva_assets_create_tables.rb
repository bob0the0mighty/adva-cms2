class AdvaAssetsCreateTables < ActiveRecord::Migration
  def self.up
    create_table :assets, :force => true do |t|
      t.references :site
      t.references :user
      t.string :type

      t.string :file
      t.string :title
      t.string :description

      t.string :media_type, :limit => 30
      t.string :mime_type,  :limit => 50

      t.timestamps
    end

    add_index :assets, :media_type

    create_table :asset_assignments, :force => true do |t|
      t.references :assetable, :polymorphic => true
      t.references :asset

      t.integer  :weight
      # t.integer  :position
      t.string   :label
      t.boolean  :active

      t.timestamps
    end

    add_index :asset_assignments, [:assetable_id, :assetable_type, :asset_id], :unique => true
    add_index :asset_assignments, [:assetable_id, :weight], :unique => true

  end

  def self.down
    drop_table :assets
    drop_table :asset_assignments
  end
end