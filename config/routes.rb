Rails.application.routes.draw do
  resources :sample_tags
  resources :tags
  resources :samples
  resources :users

  post "/login", to: "users#login", as: "login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
