require 'rails_helper'

RSpec.describe "styles_configs/new", type: :view do
  before(:each) do
    assign(:styles_config, StylesConfig.new(
      :background_image_url => "MyString"
    ))
  end

  it "renders new styles_config form" do
    render

    assert_select "form[action=?][method=?]", styles_configs_path, "post" do

      assert_select "input#styles_config_background_image_url[name=?]", "styles_config[background_image_url]"
    end
  end
end
