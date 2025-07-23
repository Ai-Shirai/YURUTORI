Rails.application.routes.draw do
  devise_for :users
 
  get "up" => "rails/health#show", as: :rails_health_check
 
  resources :tweets do
      member do
        post :add_tag
      end

      resources :likes, only: [:create, :destroy]
      resources :comments, only: [:create]
  end

  resources :diagnoses
  resources :maps, only: [:index]

  root 'tweets#index'
end  
