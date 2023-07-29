Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"

  #名前付きルートabout
  get "/homes/about" => "homes#about", as: "about"

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end

  resources :users, only: [:show, :edit, :update]

end
