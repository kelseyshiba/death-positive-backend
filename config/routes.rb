Rails.application.routes.draw do
  resources :lists
  resources :services
  resources :ceremonies
  resources :deaths
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end