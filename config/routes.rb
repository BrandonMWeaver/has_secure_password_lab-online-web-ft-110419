Rails.application.routes.draw do
  resources :users
  get "/welcome" => "welcome#index", as: "welcome"
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
