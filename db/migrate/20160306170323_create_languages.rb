class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :description
      t.integer :progress
      t.string :logolang
      t.string :logolang_cache

      t.timestamps null: false
    end
  end
end
