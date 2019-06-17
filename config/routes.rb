Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  get '/from', to: 'static_pages#from'
  get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contacts', to: 'static_pages#contacts'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  delete '/logout', to: 'sessions#destroy'

  resources :users
end
