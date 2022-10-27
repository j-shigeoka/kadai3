Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  get 'home/about', to: 'homes#about', as: 'about'
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update,]
  resources :users
end
