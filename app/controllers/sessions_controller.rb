class SessionsController < ApplicationController
  def new
  end

  def create
	user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
        session[:userid] = user.id
        redirect_to new_movie_path, notice: "Logged in!"
    else
        flash[:error] = "Wrong Username or Password."
        redirect_to new_user_path
    end
  end
  
  def destroy
	session[:userid] = nil
    redirect_to new_user_path, notice: "Logged out."
  end
end
