class ApplicationController < ActionController::Base
  #ログイン認証
  before_action :authenticate_user!, except: [:top]
  before_action :configure_permitted_parameters, if: :devise_controller?

   #sign in後に投稿画像一覧に遷移
   def after_sign_in_path_for(resource)
     post_images_path
   end

   #sign out後にaboutページに遷移
   def after_sign_out_path_for(resource)
     about_path
   end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
