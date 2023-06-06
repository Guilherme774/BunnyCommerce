Rails.application.routes.draw do
  resources :cartings
  resources :orders
  resources :users
  resources :carrots
  resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
