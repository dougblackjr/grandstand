class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.references :author, index: true, foreign_key: true
      t.text :text
      t.integer :theme
      t.integer :tempo
      t.string :key
      t.integer :CCLISongNo
      t.string :scripture

      t.timestamps null: false
    end
  end
end
