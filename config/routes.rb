Rails.application.routes.draw do

	resources :projects
  	devise_for :users

  	root "projects#index"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


