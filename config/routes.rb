Rails.application.routes.draw do
	get 'home/about'
	devise_for :users
	resources :books
	root 'home#top'
  resources :users,only: [:show,:index,:edit,:update]
end