class Post < ActiveRecord::Base
  attr_accessible :poster, :title, :url, :votes

  scope :ordered_by_votes, order("votes DESC")
end
