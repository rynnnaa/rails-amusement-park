Rails.application.routes.draw do
  root 'welcome#home'
  get 'signin', to: 'sessions#signin'
  get 'signin', to: 'sessions#signin'
  post '/signin', to: 'sessions#signin'
  get 'sessions/new', to: 'sessions#new'
  get '/sessions/create', to: 'sessions#create'
  get '/sessions/destroy', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  resources :rides
end
