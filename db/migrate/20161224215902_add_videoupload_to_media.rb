class AddVideouploadToMedia < ActiveRecord::Migration
  def change
    add_column :media, :videoupload, :string
  end
end
