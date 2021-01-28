class SessionsController < ApplicationController
  skip_before_action :ensure_user_login

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to "/"
    else
      flash[:error] = "Invalid Email or Password. Please retry."
      redirect_to new_sessions_path
    end
  end
end