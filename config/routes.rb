Rails.application.routes.draw do
  resources :news
  devise_for :users
  root "pages#home"
  get "dashboard", to: "pages#dashboard"
  resources :cinemas
end
