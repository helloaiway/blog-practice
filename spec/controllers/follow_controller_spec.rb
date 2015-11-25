require 'spec_helper'

describe FollowController do

  describe "GET 'follow,'" do
    it "returns http success" do
      get 'follow,'
      response.should be_success
    end
  end

  describe "GET 'unfollow'" do
    it "returns http success" do
      get 'unfollow'
      response.should be_success
    end
  end

end
