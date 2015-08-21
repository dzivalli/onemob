class CreateVideoActivities < ActiveRecord::Migration
  def change
    create_table :video_activities do |t|
      t.integer :plays, null: false, default: 0
      t.string :ip
      t.integer :opens, null:false, default: 0
      t.references :video, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
