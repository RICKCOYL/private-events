class UsersController < ApplicationController
  before_action :require_login, only:[:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
        redirect_to events_path(:id)
    
        else
          render :new
        end
    end

    def show
      @user = User.find_by(params[:username])

   
    end
   
end
