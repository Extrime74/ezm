Rails.application.routes.draw do
  resources :orders
  resources :clients do
    resources :orders, only: [:clients_orders]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :clients, only: [:new, :create]

  get 'clients/:client_id/orders', to: 'orders#clients_orders', as: 'client_orders'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "orders#index"
end
