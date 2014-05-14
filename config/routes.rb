Finalproject::Application.routes.draw do
  resources :games

  resources :tournaments

  resources :teams

  resources :users

  	root 'static_pages#home'
  
	resources :sessions, only: [:new, :create, :destroy]

	match '/signup', to: 'users#new', via: 'get'
	match '/signin', to: 'sessions#new', via: 'get'
	match '/signout', to: 'sessions#destory', via: 'delete'
end


