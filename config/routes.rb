Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :post_images
  devise_for :users
  resources :post_images, only: [:new, :index, :show]
  get 'homes/about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
