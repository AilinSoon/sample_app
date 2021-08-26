Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/contact'
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users

  get "/login", to: "session#new"
  post "/login", to: "session#create"
  get "/logout", to: "session#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
