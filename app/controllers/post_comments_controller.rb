class PostCommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    article = Article.find(params[:article_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.article_image = comment.article_image_id
    comment.save
  end

  def destroy
  end


end
