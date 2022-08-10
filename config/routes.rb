Rails.application.routes.draw do
  get 'gallery/index'
  get 'gallery/search'
  resources :line_items
  resources :carts
  devise_for :users
  resources :products
  root 'products#index'
  get 'admin/login'
  post   'admin/login'   => 'admin#create'
  post 'admin/logout' => 'admin#destroy'
  get 'admin/logout'

  namespace :api do
    namespace :v1 do
      post :orders, to: 'orders#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
