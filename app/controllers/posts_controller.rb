class PostsController < ApplicationController
  def new
  end

  # when a post is submitted the fields of the post are passed as params, they are saved with this.
  def create
    # creating the object... and whitelisting the controller params title and text... allowing them. 
    @post = Post.new(params.require(:post).permit[:title, :text])
    # saving the object into the database with a rails method
    @post.save
    # redirecting after its been saved.
    redirect_to @post
  end
end
