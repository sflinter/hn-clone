class PostsController < ApplicationController
  def index
    @posts = Post.ordered_by_votes
  end
end
