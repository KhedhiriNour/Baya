class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [
        :last_name,
        :first_name,
        :phone,
        :avatar
      ]
    )
  end
  private
  
 / def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end/
  helper_method :current_user
end
