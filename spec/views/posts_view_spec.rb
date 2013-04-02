require 'spec_helper'

describe "posts/index" do
  it "displays 10 random posts" do
    10.times { FactoryGirl.create(:post) }
    render

    expect(rendered).to include("http://www.example-10.com")
  end
end
