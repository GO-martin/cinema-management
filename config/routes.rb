Rails.application.routes.draw do
  resources :news
  devise_for :users
  root "pages#home"
  get "dashboard", to: "pages#dashboard"
  resources :cinemas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
