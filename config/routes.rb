Rails.application.routes.draw do
  resources :messages
  resources :categories
  resources :users

  get "/lessons/:language", to: "lessons#index"
  get "/endless/:language", to: "endless#index"
  
end
