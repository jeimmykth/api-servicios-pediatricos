Rails.application.routes.draw do
  namespace :api do
    resources :services, only: [:index]
    resources :users
    resources :doctors
    resources :appointments
    resources :prices
    post '/login', to: 'authentication#login'
  end
end
