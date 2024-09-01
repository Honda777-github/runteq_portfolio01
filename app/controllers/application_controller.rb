class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end
  # helper_method :current_user
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avator, :introduction])
  end

  def current_user
    @current_user ||= User.find_by(email: session[:email])
  end
  helper_method :current_user

end
