class AddMediauploadToMedia < ActiveRecord::Migration
  def change
    add_column :media, :upload, :string
  end
end
