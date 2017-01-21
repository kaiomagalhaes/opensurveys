require 'rails_helper'

RSpec.describe "StylesConfigs", type: :request do
  describe "GET /styles_configs" do
    it "works! (now write some real specs)" do
      get styles_configs_path
      expect(response).to have_http_status(200)
    end
  end
end
