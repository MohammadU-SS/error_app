Rails.application.routes.draw do
  resources :user_errors
  resources :user_errros
  resources :errors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "errors#index"
end
