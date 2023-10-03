Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root "pages#home"
  get "dashboard", to: "pages#dashboard"
  get "home_admin", to: "pages#home_admin"
  namespace :admin do
    resources :profiles
    resources :cinemas
    resources :users
    resources :news
  end

  namespace :customer do
    resources :profiles
  end

  # Custom Error Pages
  match "/404", to: "errors#file_not_found", via: :all
  match "/422", to: "errors#unprocessable", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
