require 'spec_helper'

describe "posts/index" do
  it "displays 10 random posts" do
    10.times { FactoryGirl.create(:post) }
    expect(Post.count).to eq(10)

    assign(:posts, Post.all)
    render
    expect(rendered).to include(Post.first.title)
  end
end
