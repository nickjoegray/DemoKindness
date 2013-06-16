class Post < ActiveRecord::Base
  attr_accessible :content

  default_scope order: 'posts.created_at DESC'
end
