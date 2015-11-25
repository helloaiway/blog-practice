require "spec_helper"

describe MircopostsController do
  describe "routing" do

    it "routes to #index" do
      get("/mircoposts").should route_to("mircoposts#index")
    end

    it "routes to #new" do
      get("/mircoposts/new").should route_to("mircoposts#new")
    end

    it "routes to #show" do
      get("/mircoposts/1").should route_to("mircoposts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mircoposts/1/edit").should route_to("mircoposts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mircoposts").should route_to("mircoposts#create")
    end

    it "routes to #update" do
      put("/mircoposts/1").should route_to("mircoposts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mircoposts/1").should route_to("mircoposts#destroy", :id => "1")
    end

  end
end
