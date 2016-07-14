class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def my_events
    @my_events = current_user.my_events
  end
end
