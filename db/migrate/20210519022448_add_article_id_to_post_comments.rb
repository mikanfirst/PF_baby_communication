class AddArticleIdToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :article_id, :integer
  end
end
