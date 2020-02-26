class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    # byebug
    @post = Post.create(post_params)
    redirect_to @post
  end

  private

  def post_params
    params.permit(:title, :description)
  end


end
