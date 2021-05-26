class ArticlesController < ApplicationController

  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def new
    @article_new = Article.new
  end

  def create
   @article = Article.new(article_params)
    @article.user_id = current_user.id
    if @article.save
      redirect_to article_path(@article)
    else
      @articles = Article.all
      render :index
    end
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @user = User.find(params[:id])
    @post_comment = PostComment.new
  end

  def edit
  end

  def article_params
    params.require(:article).permit(:title, :body, :article_image)
  end

  def ensure_correct_user
    @article = Article.find(params[:id])
    unless @article.user == current_user
      redirect_to posts_path
    end
  end
end
