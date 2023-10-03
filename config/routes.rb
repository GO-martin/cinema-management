Rails.application.routes.draw do
  resources :news
  devise_for :users
  root "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "home_admin", to: "pages#home_admin"
  resources :cinemas

  # Custom Error Pages
  match "/404", to: "errors#file_not_found", via: :all
  match "/422", to: "errors#unprocessable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all



end
