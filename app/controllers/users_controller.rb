class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        
        @image.uid = current_user.id

        if @user.save
    
          redirect_to user_path(:id)
    
        else
          render :new
        end
    end

    def show
    end

    private

    def user_params
      params.require(:user).permit(:username)
    end
end
