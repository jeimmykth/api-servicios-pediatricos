Rails.application.routes.draw do
  namespace :api do
    resources :services, only: [:index]
    resources :users
    resources :doctors
    resources :appointments
    resources :popularities
    resources :prices
  end
end
