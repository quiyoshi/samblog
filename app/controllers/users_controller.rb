class UsersController < ApplicationController
  def index
    @posts = Post.all
  end

  def content
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def like
    @post = Post.find(params[:id])
    @post.increment(:fav)
    @post.save
    redirect_to controller: 'user', action: 'index'
  end
end
