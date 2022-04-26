Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords',
    registrations: 'admin/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'public/sessions',
    passwords:     'public/passwords',
    registrations: 'public/registrations'
  }
  namespace :admin do
    resources :cameras, only: [:index, :new, :create, :destroy]
    resources :lenses, only: [:index, :new, :create, :destroy]
  end
  namespace :public do
    root to: 'blogs#index'
    resources :users, only: [:edit, :update, :destroy]
    resources :blogs, except: [:index]
    get "/home/timeline" => "home#timeline"
    get "/follows/follower" => "follows#follower"
    get "/follows/followee" => "follows#followee"
    get "search" => "search#index"
    get "users/check" => "users#check"
  end

end
