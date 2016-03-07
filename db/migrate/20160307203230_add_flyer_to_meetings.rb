class AddFlyerToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :flyer, :string
    add_column :meetings, :flyer_cache, :string
  end
end
