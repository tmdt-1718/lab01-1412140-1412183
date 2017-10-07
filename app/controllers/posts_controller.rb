class PostsController < ApplicationController

  before_action :find_Post, only: [:show, :edit, :update, :destroy]
  
  def index
      @post = Post.all.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
    def find_Post
      @post = Post.find(params[:id])
    end
end
