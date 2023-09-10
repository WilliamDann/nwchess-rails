Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  resources :users
  resources :sessions

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
