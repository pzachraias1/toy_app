Rails.application.routes.draw do
  resources :micropsts
  resources :users
  root 'users#index'
end
