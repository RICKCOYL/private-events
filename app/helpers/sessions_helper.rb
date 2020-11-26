module SessionsHelper
    def require_login
        unless log_in?(@user)
          flash[:error] = "You must be logged in to access this section"
          redirect_to new_login_url # halts request cycle
        end
      end

      def log_in?(user)
        session[:current_user] = User.ids
      end
end
