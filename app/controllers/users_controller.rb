class UsersController < ApplicationController

  def new
  end

  def create

    p name = params[:user][:name]
    p email = params[:user][:email_address]
    p password = params[:user][:password]

    name = params[:user][:name]
    email = params[:user][:email_address]
    password = params[:user][:password]
    user = User.new(params[name: name, email: email, password: password])
    if user.valid?
      user.save
      session[:user_id] = user.id
      flash[:success] = "New account created"
      redirect_to posts_path
    else
      flash[:danger] = "Could not create account"
      redirect_to root_path
    end
  end
end
