class CreateSetlists < ActiveRecord::Migration
  def change
    create_table :setlists do |t|
      t.string :title
      t.date :date
      t.references :user, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.references :medium, index: true, foreign_key: true
      t.text :comments

      t.timestamps null: false
    end
  end
end
