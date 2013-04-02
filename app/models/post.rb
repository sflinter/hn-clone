class Post < ActiveRecord::Base
  attr_accessible :poster, :title, :url, :votes
end
