class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.string :client_url
      t.text :description
      t.integer :progress
      t.string :visual
      t.string :visual_cache

      t.timestamps null: false
    end
  end
end
