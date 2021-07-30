Rails.application.routes.draw do
  root 'users#login'
  resource :users, only: %i[create]
  resources :projects
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
