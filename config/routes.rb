Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do 
      resources :services
      #resources :contacts
      resources :ceremonies do 
        resources :contacts, only: [:index, :create, :show, :update, :destroy]
      end
      resources :deaths
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
