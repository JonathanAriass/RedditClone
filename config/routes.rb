Rails.application.routes.draw do
  resources :posts
  devise_for  :users, :controllers => { registrations: 'users/registrations' }

  get "/users/:id", to: "users#show", as: "user"

  root "posts#index"
end
