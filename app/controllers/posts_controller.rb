class PostsController < ApplicationController

  before_action :find_Post, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:new,:create, :edit]
  private

  def index
    @posts = Post.all
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
    @post.category_id = params[:category_id]
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
    def set_categories
      @categories = CategoryPost.all.map{|c| [c.name, c.id]}
      end
end
