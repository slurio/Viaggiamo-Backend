Rails.application.routes.draw do
  resources :lessons
  resources :messages
  resources :categories
  resources :users
  get "/users/:id/avatar", to: "users#avatar"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
