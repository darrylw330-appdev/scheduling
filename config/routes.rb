# config/routes.rb
Rails.application.routes.draw do
  resources :users
  resources :work_days
  resources :work_times
  resources :bookings
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'users#index'
end
