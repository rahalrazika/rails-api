Rails.application.routes.draw do
  resource :users, only: %i[create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
