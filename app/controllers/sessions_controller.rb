class SessionsController < ApplicationController
  def new
  end
  def create
  	user = User.find_by_email(params[:email])
  	if user &amp;&amp; user.authenticate(params[:password])
  		seesion[:user_id] = user.user_id
  		redirect_to root_url, notice: "Logged in"
  	else
  		flash.now.alert = "Email or password is invalid"
  		render "new"
  	end
  end

  def destroy
  	sessions[:user_id] = nil
  	redirect_to root_url, notice: "Logged Out"
  end
  
  private
  def current_user
  	@current_user ||= User.find(sessions[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
