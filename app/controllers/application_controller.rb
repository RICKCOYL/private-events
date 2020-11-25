class ApplicationController < ActionController::Base
   

    def user_params
      params.require(:user).permit(:username)
    end

    def event_params
      params.require(:event).permit(:date)
    end
end
