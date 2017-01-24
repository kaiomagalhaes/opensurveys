# frozen_string_literal: true
Rails.application.routes.draw do
  resources :styles_configs
  get 'pages/index'

  root to: 'pages#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  mount Rapidfire::Engine => '/rapidfire'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
