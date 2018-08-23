Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    member do
      resources :bookings, only: [:index]
    end
    resources :gardens, only: [:new, :create, :edit, :update]
  end
  resources :gardens, only: [:index, :show, :destroy] do
  resources :bookings, except: [:index]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
