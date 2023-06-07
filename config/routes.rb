Rails.application.routes.draw do
  resources :cartings
  resources :orders
  resources :users
  resources :carrots
  resources :suppliers

  # Suppliers
  get 'suppliers/carrots/:id', to: 'suppliers#get_all_supplier_carrots'


  # Orders
  get 'orders/cartings/:id', to: 'orders#get_order_cartings'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
