Rails.application.routes.draw do
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'
end

Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
end