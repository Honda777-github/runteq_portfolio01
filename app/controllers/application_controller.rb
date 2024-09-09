class ApplicationController < ActionController::Base
  before_action :require_login
  add_flash_types :success, :danger

  def current_user
    @current_user ||= User.find_by(email: session[:email])
  end
  helper_method :current_user

  private

  def not_authenticated
    redirect_to login_path, danger: t('defaults.flash_message.require_login')
  end

end
