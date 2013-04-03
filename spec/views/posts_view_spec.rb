require 'spec_helper'

describe "posts/index" do
  it "displays 10 random posts" do
    10.times { FactoryGirl.create(:post) }
    expect(Post.count).to eq(10)

    assign(:posts, Post.all)
    render
    expect(rendered).to include(Post.first.title)
  end

  it "displays posts ordered by number of votes" do
    (1..5).each { |n| FactoryGirl.create(:post, :votes => n) }
    expect(Post.count).to eq(5)

    assign(:posts, Post.ordered_by_votes)
    render
    expect(rendered).to include(Post.first.title)
  end
end
