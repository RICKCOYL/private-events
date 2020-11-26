class SessionsController < ApplicationController
    def new
    end
    def create
        user=User.find_by(username: params[:username])
     
            if user
                session[:user_id]=user.id
                flash[:notice]="#{user.username} succesfully logged in"
                redirect_to user_path
              else
                flash.now.alert = 'Login failed'
                render :new
              end
      end

      def destroy
        session.delete(:current_user)
        flash[:notice] = "You have successfully logged out."
        redirect_to root_url
      end
end
