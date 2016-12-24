class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :type
      t.references :user, index: true, foreign_key: true
      t.string :url

      t.timestamps null: false
    end
  end
end
