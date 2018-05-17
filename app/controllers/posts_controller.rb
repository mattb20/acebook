class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to posts_url
  end

  def index
    @posts = Post.order('id DESC')
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end

end
