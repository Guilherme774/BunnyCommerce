Rails.application.routes.draw do
  resources :cartings
  resources :orders
  resources :users
  resources :carrots
  resources :suppliers

  get 'suppliers/carrots/:id', to: 'suppliers#get_all_supplier_carrots'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
