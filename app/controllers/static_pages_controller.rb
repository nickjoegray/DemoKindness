class StaticPagesController < ApplicationController
  
  def home
    @post = Post.create
    # @feed_items = @post.paginate(page: params[:page])
  end

  def about
  end

  def blog
  end

  def support
  end

end
