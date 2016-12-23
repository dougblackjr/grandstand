class ChangeSongThemeToString < ActiveRecord::Migration
  def change
  	change_column :songs, :theme, :string
  end
end
