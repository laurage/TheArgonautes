class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(current_user)
  end

  def update
    @user = User.find(current_user)
    @user.update(params[:user])
  end

  def my_events
    @my_events = current_user.my_events
  end
end
