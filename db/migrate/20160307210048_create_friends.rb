class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :url
      t.string :logobrand
      t.string :logobrand_cache

      t.timestamps null: false
    end
  end
end
