class PostsController < ApplicationController
  def index
    @posts = Post.ordered_by_votes
  end

  def new
  end

  def create
    Post.create(:title => params[:title],
                :url => urlify(params[:url]),
                :poster => params[:poster],
                :votes => 0)

    redirect_to posts_path
  end

  def update
    post = Post.find(params[:id])
    post.up_vote
    redirect_to posts_path
  end

  private
  def urlify(url)
    url.strip!
    url.insert(0, "http://") unless url =~ /^http:\/\//
    url
  end
end
