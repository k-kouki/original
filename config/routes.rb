Rails.application.routes.draw do

  
  devise_for :admins
  devise_for :users
  root to: "items#index"
  resources :items, only: [:index, :new, :create] do
    collection do
      get 'product'
    end
    resources :orders, only: [:index, :create]
  end
end
