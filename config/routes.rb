Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show

  #get 'restaurants'      =>  'restaurants#index'
  #get 'restaurants/new'  =>  'restaurants#new'  #情報投稿
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create]
  end
  #get 'hotpeppers'       =>  'hotpeppers#index'
  #resources :places

  # はじめにこのページに飛ばされる
  root 'restaurants#index'

end
