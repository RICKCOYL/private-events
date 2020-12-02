class UsersController < ApplicationController
  before_action :require_login, only:[:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
        redirect_to new_user_path
    
        else
          render :new
        end
    end

    def show
      @user = User.find_by(params[:username])
     
    end

    def destroy
      session.delete(:current_user)
      flash[:notice] = "You have successfully logged out."
      redirect_to root_url
    end
end
