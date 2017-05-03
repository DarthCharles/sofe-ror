Rails.application.routes.draw do

  namespace :admin do
    resources :products
    resources :customers
    resources :orders do
      get :complete
    end
    get 'welcome/index'
    root 'welcome#index'
  end

  resources :orders, only: :index do
    post :place_order
    get :confirm
  end
  resources :menu, only: :index
  resources :home, only: :index


  root 'home#index'
end
