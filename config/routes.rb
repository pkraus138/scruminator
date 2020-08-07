Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  resources :teams, only: %i[index show]

  resources :users do
    resources :entries, only: %i[create edit new update]
  end
end
