class Post < ActiveRecord::Base
  attr_accessible :content

  validates :content, presence: true, length: { maximum: 150 }

  default_scope order: 'posts.created_at DESC'

  # def feed
  #   @post.all
  # end

end
