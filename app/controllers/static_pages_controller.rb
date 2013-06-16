class StaticPagesController < ApplicationController
  
  def home
    @post = Post.create
  end

  def about
  end

  def blog
  end

  def support
  end

end
