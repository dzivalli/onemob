class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :subject, null: false
      t.text :body
      t.string :url, null: false
      t.string :thumbnail_image
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
