Rails.application.routes.draw do
  root 'welcome#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'signin', to: 'users#signin'
  post 'signin', to: 'sessions#signin'
  post '/logout', to: 'sessions#destroy'
  get '/sessions/new'
  get '/sessions/create'
  get '/sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  resources :rides
end
