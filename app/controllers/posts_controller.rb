class PostsController < ApplicationController

  def index
    @posts = Post.all 
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "You have spread kindness!"
      redirect_to [:root]
    else
      render 'static_pages/home'
    end
  end

end
