class PostsController < ApplicationController
  before_action :require_login, only: [:create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :body)
  end

  def require_login
    unless signed_in?
      redirect_to :back, flash: {error: t(".logged_in_error")}
    end
  end
end
