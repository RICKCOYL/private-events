class SessionsController < ApplicationController
  def new; end

  def create
    # user=User.find_by(username: user_params[:username])
    @user = User.find_by(username: params[:session][:username])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "#{@user.username} succesfully logged in"
      redirect_to events_path
    else
      flash.now.alert = 'Login failed'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have successfully logged out.'
    redirect_to new_user_path
  end
end
