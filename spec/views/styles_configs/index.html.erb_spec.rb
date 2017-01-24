# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'styles_configs/index', type: :view do
  before do
    assign(:styles_configs, [
             StylesConfig.create!(
               background_image_url: 'Background Image Url'
             ),
             StylesConfig.create!(
               background_image_url: 'Background Image Url'
             )
           ])
  end

  it 'renders a list of styles_configs' do
    render
    assert_select 'tr>td', text: 'Background Image Url'.to_s, count: 2
  end
end
