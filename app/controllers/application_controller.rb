class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception  

    def user_params
      params.require(:user).permit(:username)
    end

    def event_params
      params.require(:event).permit(:date, :description)
    end
    
    
    private   
    def current_user   
      User.where(id: session[:user_id]).first   
   
    end   
    helper_method :current_user 
end
