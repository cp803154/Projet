require "spec_helper"

describe PersonnagesController do
  describe "routing" do

    it "routes to #index" do
      get("/personnages").should route_to("personnages#index")
    end

    it "routes to #new" do
      get("/personnages/new").should route_to("personnages#new")
    end

    it "routes to #show" do
      get("/personnages/1").should route_to("personnages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personnages/1/edit").should route_to("personnages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personnages").should route_to("personnages#create")
    end

    it "routes to #update" do
      put("/personnages/1").should route_to("personnages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personnages/1").should route_to("personnages#destroy", :id => "1")
    end

  end
end
