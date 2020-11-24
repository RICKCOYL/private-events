class SessionsController < ApplicationController
    def new
    end
    def create
        @user= User.find_by_name(params[:username])
        if @user
            session[:user_id] = @user_id
            redirect_to user_path(@user)
            flash[:notice] ='succesfully logged in'
        else
            flash.now.alert ='User does not exist'
            render 'new'
    end
    def index
    end
end
