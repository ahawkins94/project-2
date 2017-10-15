Rails.application.routes.draw do

	resources :projects
  	devise_for :users

  	root "projects#index"
end