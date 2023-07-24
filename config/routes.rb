Rails.application.routes.draw do
  devise_for :users
root to: "homes#top"

#名前付きルートabout
get 'homes/about', as: 'about'

end
