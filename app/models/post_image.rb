class PostImage < ApplicationRecord

  #画像投稿に必要な ActiveStorage の設定
  has_one_attached :image

  #1:NのN側にあたるモデル
  belongs_to :user

  #1:Nの1側にあたるモデル
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  #画像が設定されていない場合
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

 def favorited_by?(user)
   favorites.exists?(user_id: user.id)
 end
  
end
