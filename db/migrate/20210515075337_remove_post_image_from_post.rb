class RemovePostImageFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :post_image, :text
  end
end
