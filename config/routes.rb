Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'tags/index'
  get 'tags/new'
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  get 'pages/test'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end