class UsersController < ApplicationController
  def new
  end

  def update
  end

  def my_events
    @my_events = Event.find_by
  end
end
