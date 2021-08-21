Rails.application.routes.draw do
  resources :favourites
  root 'users#login'
  resource :users, only: %i[create]
  resources :projects
  resources :partnerships, only: %i[index create destroy]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
