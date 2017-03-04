class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "Welcome to the alpha blog #{@user.username}"
    redirect_to articles_path
  else
    render 'new'
  end
  
end

private

def user_params
      # whitelisting of parameters (i.e, only passing the known 'good' params)
      params.require(:user).permit(:username,:email,:password)
end
end