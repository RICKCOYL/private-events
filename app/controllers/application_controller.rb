class ApplicationController < ActionController::Base
   

    def user_params
      params.require(:user).permit(:username)
    end
end
