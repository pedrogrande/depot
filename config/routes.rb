Depot::Application.routes.draw do
  resources :line_items


  resources :carts


  get "store/index"

  resources :products


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "store#index", :as => "store"
  devise_for :users
  resources :users
end