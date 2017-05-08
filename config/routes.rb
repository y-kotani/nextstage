Rails.application.routes.draw do
  get 'hotpeppers/index'

  resources :places
  devise_for :users
  get 'restaurants'      =>  'restaurants#index'
  get 'restaurants/new'  =>  'restaurants#new'  #情報投稿
  get 'hotpeppers'       =>  'hotpeppers#index'
end
