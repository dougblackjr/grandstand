class AddAudiouploadToMedia < ActiveRecord::Migration
  def change
    add_column :media, :audioupload, :string
  end
end
