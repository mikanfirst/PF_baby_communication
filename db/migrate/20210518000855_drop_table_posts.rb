class DropTablePosts < ActiveRecord::Migration[5.2]
  def change
    drop_table :posts do |t|
      t.integer "user_id"
      t.text "body"
      t.string "title"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "post_image_id"
    end
  end
end
