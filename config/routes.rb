Rails.application.routes.draw do
  get '/', to: 'dashboards#index'

  resources :users
  resources :sessions

  get '/sessions/destroy', to: 'users#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
