Rails.application.routes.draw do
  root to:'home#top'
  get 'home/top'
  get 'home/about'
  devise_for :users
  resources :books do
    resources :comments, only:[:create, :destroy]
  	resource :favorites, only:[:create, :destroy]
  end
  resources :users

  # root 'post_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
