Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :post_images, only: [:new, :index, :show]

  #名前付きルートabout
  get "/homes/about" => "homes#about", as: "about"

end
