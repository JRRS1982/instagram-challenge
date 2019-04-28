class User < ApplicationRecord

  def new
  end

  def create
    name = params[:user][:name]
    email = params[:user][:email]
    password = params[:user][:password]
    user = User.new(name: name, email: email, password: password)
  end

end
