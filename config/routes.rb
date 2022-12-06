Rails.application.routes.draw do
  root "random#index"
  resources :random 
  get '/include_information', to: 'random#include_information'
  get '/exclude_information', to: 'random#exclude_information'
  get '/filtered_result', to: 'random#filtered_result'
  get '/credentials', to: 'random#credentials'
end
