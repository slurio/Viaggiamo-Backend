Rails.application.routes.draw do
  resources :messages
  resources :categories
  resources :users

  get "/lessons/:language", to: "lessons#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
