Rails.application.routes.draw do
  devise_for :users
  root 'pages#dashboard'
  get 'pages/settings'
  get 'stripe/connect'
end
