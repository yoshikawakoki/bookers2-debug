Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :users,only: [:show,:index,:edit,:update,:new]
  resources :books
  get 'home/about' => 'homes#about'

end