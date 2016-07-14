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
    all_events = []
    current_user.my_events.each do |event|
      all_events << event
    end

    @my_events = current_user.my_events

    @my_captain_events = User.find(current_user.id).events
    User.find(current_user.id).events.each do |event|
      all_events << event
    end

    @my_futur_events = []
    @my_past_events = []
    all_events.each do |event|
      if event.time_start > DateTime.now
        @my_futur_events << event
      else event.time_start < DateTime.now
        @my_past_events << event
      end
    end
    @my_past_events.sort_by! { |k| -k[:time_start].to_i }
    @my_futur_events.sort_by! { |k| k[:time_start].to_i }
  end
end
