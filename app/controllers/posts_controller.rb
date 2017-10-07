class PostsController < ApplicationController
  before_action :find_Post, only: [:show, :edit, :update, :destroy]
  def index
      @Post = Post.all.order("created_at DESC")
  end

  def show
  end

  def edit
  end

  def update
    if @Post.update(Post_params)
      redirect_to Post_path(@Post)
    else
      render 'edit'
    end
  end

  def destroy
    @Post.destroy
    redirect_to root_path
  end

  def new
    @Post = Post.new
  end

  def create
    @Post = Post.new(Post_params)
    if @Post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  private
    def Post_params
      params.require(:Post).permit(:title, :body)
    end
    def find_Post
      @Post = Post.find(params[:id])
    end
end
