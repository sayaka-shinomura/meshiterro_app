class PostComment < ApplicationRecord
  
  #1:NのN側にあたるモデル
  belongs_to :user
  belongs_to :post_image

end
