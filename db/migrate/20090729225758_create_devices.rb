class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :name
      t.string :url
      t.string :booth
      t.text :description
      t.boolean :application

      t.timestamps
    end

    add_index :devices, [:name]
  end

  def self.down
    drop_table :devices
  end
end
