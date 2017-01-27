# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'styles_configs/edit', type: :view do
  before do
    style = StylesConfig.create!(background_image_url: 'MyString')
    assign(:styles_config, style)
  end

  it 'renders the edit styles_config form' do
    render

    assert_select 'form[action=?][method=?]', styles_config_path(assing(:styles_config)), 'post' do
      assert_select 'input#styles_config_background_image_url[name=?]', 'styles_config[background_image_url]'
    end
  end
end
