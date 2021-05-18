class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.text :body
      t.string :title
      t.string :article_image_id

      t.timestamps
    end
  end
end
