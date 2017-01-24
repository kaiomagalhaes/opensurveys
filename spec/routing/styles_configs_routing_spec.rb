# frozen_string_literal: true
require 'rails_helper'

RSpec.describe StylesConfigsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      styles_configs_index = 'styles_configs#index'
      expect(styles_configs_index).to route_to(get: '/styles_configs')
    end

    it 'routes to #new' do
      styles_configs_new = 'styles_configs#new'
      expect(styles_configs_new).to route_to(get: '/styles_configs/new')
    end

    it 'routes to #show' do
      styles_configs_show = 'styles_configs#show'
      expect(styles_configs_show, id: '1').to route_to(get: '/styles_configs/1')
    end

    it 'routes to #edit' do
      styles_configs_edit = 'styles_configs#edit'
      expect(styles_configs_edit, id: '1').to route_to(get: '/styles_configs/1/edit')
    end

    it 'routes to #create' do
      styles_configs_create = 'styles_configs#create'
      expect(styles_configs_create).to route_to(post: '/styles_configs')
    end

    it 'routes to #update via PUT' do
      styles_configs_update = 'styles_configs#update'
      expect(styles_configs_update, id: '1').to route_to(put: '/styles_configs/1')
    end

    it 'routes to #update via PATCH' do
      styles_configs_update = 'styles_configs#update'
      expect(styles_configs_update, id: '1').to route_to(patch: '/styles_configs/1')
    end

    it 'routes to #destroy' do
      styles_configs_destroy = 'styles_configs#destroy'
      expect(styles_configs_destroy, id: '1').to route_to(delete: '/styles_configs/1')
    end
  end
end
