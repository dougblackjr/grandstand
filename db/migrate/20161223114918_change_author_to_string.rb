class ChangeAuthorToString < ActiveRecord::Migration
  def change
    remove_column :songs, :author_id
    add_column :songs, :author, :string
  end
end
