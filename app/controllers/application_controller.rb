class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user
  end

  def require_login
    return if logged_in?

    flash[:danger] = 'Please login!'
    redirect_to login_path
  end

  def user_params
    params.require(:user).permit(:username)
  end

  def event_params
    params.require(:event).permit(:date, :description)
  end

  def attendance_params
    params.require(:attendance).permit(:attended_events_id)
  end
end
