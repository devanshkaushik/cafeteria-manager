Rails.application.routes.draw do
  get "/" => "home#index"

  resources :users
  resources :menus
  resources :orders

  post "/menu_items" => "menu_items#create", as: :menu_items
  put "/menu_item/:id" => "menu_items#update", as: :update_menu_item
  delete "/menu_item/:id" => "menu_items#destroy", as: :destroy_menu_item

  post "/order_items" => "order_items#create", as: :order_items
  delete "/order_item/:id" => "order_items#destroy", as: :order_item

  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_sessions

  get "/dashboard" => "dashboard#index", as: :dashboard

  get "/reports" => "reports#index", as: :reports
end
