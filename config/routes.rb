Rails.application.routes.draw do
  root 'welcome#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'signin', to: 'users#signin'
  post 'signin', to: 'sessions#signin'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
end
