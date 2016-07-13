class UsersController < ApplicationController
  def new
  end

  def update
  end

  def my_events
    @my_events = current_user.my_events
  end
end
