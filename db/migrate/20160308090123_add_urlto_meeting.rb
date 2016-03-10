class AddUrltoMeeting < ActiveRecord::Migration
  def change
    add_column :meetings, :url, :string
  end
end
