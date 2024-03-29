class PostsController < ApplicationController
  before_filter :require_login

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to "/posts"
    else
      render :action => 'new'
    end
  end

  def index
    @posts = Post.all
  end

end
