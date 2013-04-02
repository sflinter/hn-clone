require 'spec_helper'

describe Post do
  it "creates 10 sample posts" do
    10.times { FactoryGirl.create(:post) }
    expect(Post.count).to eq(10)
  end
end
