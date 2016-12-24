class RenameTypeToMediatypeInMedia < ActiveRecord::Migration
  def change
    remove_column :media, :type
    add_column :media, :mediatype, :string
  end
end
