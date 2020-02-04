Rails.application.routes.draw do
  resources :users
  get "/users/welcome" => "users#welcome", as: "welcome"
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
