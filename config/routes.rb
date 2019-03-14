Rails.application.routes.draw do
  namespace :api do
    resources :services, only: [:index]
    resources :users
  end
end
