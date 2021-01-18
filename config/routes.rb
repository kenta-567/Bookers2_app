Rails.application.routes.draw do


  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get "home/about" => "homes#about"
  root 'homes#top'
 resources :books, only: [ :edit, :index, :show, :create, :destroy, :update ]
 resources :users, only: [ :edit, :index, :show, :update ]
end
