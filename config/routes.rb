Rails.application.routes.draw do
  resources :orgshifts
  resources :newshifts
  resources :shifts
  resources :users, only: [:create, :update, :show, :index]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  resources :organisations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
