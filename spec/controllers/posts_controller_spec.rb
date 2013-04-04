require 'spec_helper'

describe PostsController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.code).to eq("200")
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe 'POST #create' do
    # let(:new_post) { FactoryGirl.build :post }

    it "creates a new news post" do
      expect{
        post :create, FactoryGirl.attributes_for(:post)
      }.to change(Post, :count).by(1)
    end

    it "redirects to the homepage" do
      post :create, FactoryGirl.attributes_for(:post)
      response.should redirect_to posts_url
    end
  end

  describe 'PUT #update' do
    let(:new_post) { FactoryGirl.create(:post, :votes => 10) }

    it "allows for an up-vote" do
      put :update, id: new_post
      new_post.reload
      new_post.votes.should eq(11)
    end

    it "redirects to the homepage" do
      put :update, id: new_post
      response.should redirect_to posts_url
    end
  end
end
