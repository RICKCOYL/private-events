class ApplicationController < ActionController::Base
    def user_params
        params.require(:users).permit(:username)
      end
end
