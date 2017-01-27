# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'styles_configs/show', type: :view do
  before do
    @styles_config = assign(:styles_config, StylesConfig.create!(
                                              background_image_url: 'Background Image Url'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Background Image Url/)
  end
end
