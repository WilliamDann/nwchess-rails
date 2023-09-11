Rails.application.routes.draw do
  resources :registrations
  resources :events
  resources :reg_tables
  get '/', to: 'dashboards#index'

  resources :users
  resources :sessions

  get '/sessions/destroy', to: 'users#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
