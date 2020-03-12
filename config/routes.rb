Rails.application.routes.draw do
  resources :tasks, only: [:api]
  resources :products
  get "/api/v1/products", to: "apis#api"
end
