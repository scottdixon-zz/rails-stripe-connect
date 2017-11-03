Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'pages#dashboard'
  get 'pages/settings'
  get 'stripe/connect'
end
