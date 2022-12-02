Rails.application.routes.draw do
  root "random#index"

  get "/random", to: "random#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :random, only: [ :index ]
end
