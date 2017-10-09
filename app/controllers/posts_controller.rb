class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:new,:create, :edit]
  def index
    if params[:category].blank?
      @post = Post.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @post = Post.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
    # @post = post.find(params[:id])
  end

  def edit
    @categories = Category.all.map{|c| [c.name, c.id]}
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
    @categories = Category.all.map{|c| [c.name, c.id]}
  end

  def create
    @post = Post.create(post_params)
    @post.category_id = params[:category_id]
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  private
    def set_categories
      @categories = Category.all.map{ |c| [c.name, c.id]} 
    end
    def post_params
      params.require(:post).permit(:title, :body)
    end
    def find_post
      @post = Post.find(params[:id])
    end
end
