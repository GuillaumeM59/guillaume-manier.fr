class AddLangIdToProject < ActiveRecord::Migration
  def change
    remove_column :projects, :langsused
    add_column :projects, :lang_id1, :string
    add_column :projects, :lang_id2, :string
    add_column :projects, :lang_id3, :string
    add_column :projects, :lang_id4, :string
    add_column :projects, :lang_id5, :string
    add_column :projects, :lang_id6, :string 


  end
end
