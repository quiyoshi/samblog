class PostsController < ApplicationController
  # GET /posts/new
  def new
  end

  def create
    @post = Post.new(post_params)
    @post.fav = 0
    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
    @post.increment(:fav)
    @post.save
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:text)
    end

end
