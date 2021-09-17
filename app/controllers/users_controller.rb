class UsersController < ApplicationController

  def new 
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      raise @user.errors.messages.inspect
    end
  end

  def show
    if session[:user_id]
      current_user
    else
      redirect_to root_path
    end
  end

  def singin
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:name, :tickets, :nausea, :happiness, :height, :password, :admin)
  end
end
