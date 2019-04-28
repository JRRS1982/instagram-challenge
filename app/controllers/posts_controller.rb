class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end

  # when a post is submitted the fields of the post are passed as params, they are saved with this.
  def create
    # creating the object... and whitelisting the controller params title and text... allowing them. 
    params = post_params
    @post = Post.new(post_params)
    # saving the object into the database with a rails method
    if @post.save
      # redirecting after its been saved.
      redirect_to @post
    else
      #render is used here to pass the post object back to the new template, instead of redirecting, which will refresh.
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    # feel like we only want to allow updating of the text, not title (i.e. image later)
    if @post.update(post_text)
      redirect_to @post
    else
      render 'edit'
    end
  end

  #looking to keep the params private, so can not be called from outside.
  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def post_text
    params.require(:post).permit(:text)
  end
end
