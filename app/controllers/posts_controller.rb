class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  # when a post is submitted the fields of the post are passed as params, they are saved with this.
  def create
    # creating the object... and whitelisting the controller params title and text... allowing them. 
    params = post_params
    @post = Post.new(params)
    # saving the object into the database with a rails method
    @post.save
    # redirecting after its been saved.
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  #looking to keep the params private, so can not be called from outside.
  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
