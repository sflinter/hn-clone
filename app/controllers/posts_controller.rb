class PostsController < ApplicationController
  def index
    @posts = Post.ordered_by_votes
  end

  def update
    post = Post.find(params[:id])
    post.up_vote
    redirect_to posts_path
  end
end
