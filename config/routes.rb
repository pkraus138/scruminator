Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  resources :teams, only: %i[index show]
end
