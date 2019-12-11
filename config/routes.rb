
Rails.application.routes.draw do
  devise_for :suppliers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :order, only: [:index, :edit, :update]
  resources :product, only: [:edit, :update]
end
