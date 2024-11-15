class ChangeNameColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :lists, :content, :name
  end
end
