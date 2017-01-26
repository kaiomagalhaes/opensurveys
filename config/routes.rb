# frozen_string_literal: true
Rails.application.routes.draw do
  resources :styles_configs
  get 'pages/index', as: 'pages-index'
  
	get 'styles_configs/index', as: 'styles_configs-index'
	post 'styles_configs/create', as: 'styles_configs-create'
	get 'styles_configs/new', as: 'styles_configs-new'
	get 'styles_configs/edit', as: 'styles_configs-edit'
	get 'styles_configs/show', as: 'styles_configs-show'
	patch 'styles_configs/update', as: 'styles_configs-patch-update'
	put 'styles_configs/update', as: 'styles_configs-put-update'
	delete 'styles_configs/destroy', as: 'styles_configs-destroy'

	get 'users/sessions/new', as: 'users_sessions-new'
	post 'users/sessions/create', as: 'users_sessions-create'
	delete 'users/sessions/destroy', as: 'users_sessions-destroy'
	
	get 'devise/passwords/new', as: 'devise_passwords-new'
	get 'devise/passwords/edit', as: 'devise_passwords-edit'
	patch 'devise/passwords/update', as: 'devise_passwords-patch-update'
	put 'devise/passwords/update', as: 'devise_passwords-put-update'
	post 'devise/passwords/create', as: 'devise_passwords-create'
	get 'devise/registrations/cancel', as: 'devise_registrations-cancel'
	get 'devise/registrations/new', as: 'devise_registrations-new'
	get 'devise/registrations/edit', as: 'devise_registrations-edit'
	patch 'devise/registrations/update', as: 'devise_registrations-patch-update'
	put 'devise/registrations/update', as: 'devise_registrations-put-update'
	delete 'devise/registrations/destroy', as: 'devise_registrations-destroy'
	post 'devise/registrations/create', as: 'devise_registrations-create'
	
	#################################################################
	
	get 'rapidfire/questions/index', as: 'rapidfire_questions-index'
	post 'rapidfire/questions/create', as: 'rapidfire_questions-create'
	get 'rapidfire/questions/new', as: 'rapidfire_questions-new'
	get 'rapidfire/questions/edit', as: 'rapidfire_questions-edit'
	get 'rapidfire/questions/show', as: 'rapidfire_questions-show'
	patch 'rapidfire/questions/update', as: 'rapidfire_questions-patch-update'
	put 'rapidfire/questions/update', as: 'rapidfire_questions-put-update'
	delete 'rapidfire/questions/destroy', as: 'rapidfire_questions-destroy'
	
	post 'rapidfire/attempts/create', as: 'rapidfire_attempts-create'
	get 'rapidfire/attempts/new', as: 'rapidfire_attempts-new'
	
	get 'rapidfire/surveys/results', as: 'rapidfire_surveys-results'
	get 'rapidfire/surveys/index', as: 'rapidfire_surveys-index'
	post 'rapidfire/surveys/create', as: 'rapidfire_surveys-create'
	get 'rapidfire/surveys/new', as: 'rapidfire_surveys-new'
	get 'rapidfire/surveys/edit', as: 'rapidfire_surveys-edit'
	get 'rapidfire/surveys/show', as: 'rapidfire_surveys-show'
	patch 'rapidfire/surveys/update', as: 'rapidfire_surveys-patch-update'
	put 'rapidfire/surveys/update', as: 'rapidfire_surveys-put-update'
	delete 'rapidfire/surveys/destroy', as: 'rapidfire_surveys-destroy'

  root to: 'pages#index'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  mount Rapidfire::Engine => '/rapidfire'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
