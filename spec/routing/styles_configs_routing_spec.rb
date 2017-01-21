require "rails_helper"

RSpec.describe StylesConfigsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/styles_configs").to route_to("styles_configs#index")
    end

    it "routes to #new" do
      expect(:get => "/styles_configs/new").to route_to("styles_configs#new")
    end

    it "routes to #show" do
      expect(:get => "/styles_configs/1").to route_to("styles_configs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/styles_configs/1/edit").to route_to("styles_configs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/styles_configs").to route_to("styles_configs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/styles_configs/1").to route_to("styles_configs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/styles_configs/1").to route_to("styles_configs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/styles_configs/1").to route_to("styles_configs#destroy", :id => "1")
    end

  end
end
