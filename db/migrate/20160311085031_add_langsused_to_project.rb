class AddLangsusedToProject < ActiveRecord::Migration
  def change
    add_column :projects, :langsused, :string, array: true, default: '{}'
  end
end
