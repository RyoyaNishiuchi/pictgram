Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/new'
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  get 'pages/test'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end