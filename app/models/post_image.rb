class PostImage < ApplicationRecord

  #画像投稿に必要な ActiveStorage の設定
  has_one_attached :image

  #1:NのN側にあたるモデル
  belongs_to :user
  

end
