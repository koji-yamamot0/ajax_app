Rails.application.routes.draw do
  root to: 'posts#index'  # get 'posts', to: 'posts#index'
  # get 'posts/new', to: 'posts#new' 削除した
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#checked'
 end