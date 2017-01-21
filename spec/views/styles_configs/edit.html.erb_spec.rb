require 'rails_helper'

RSpec.describe "styles_configs/edit", type: :view do
  before(:each) do
    @styles_config = assign(:styles_config, StylesConfig.create!(
      :background_image_url => "MyString"
    ))
  end

  it "renders the edit styles_config form" do
    render

    assert_select "form[action=?][method=?]", styles_config_path(@styles_config), "post" do

      assert_select "input#styles_config_background_image_url[name=?]", "styles_config[background_image_url]"
    end
  end
end
