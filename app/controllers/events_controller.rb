class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET / events
  # GET / events.json
  def index
    search_keys = [:category, :address_city]
    search_params = {}
    search_keys.each do |key|
      if params[key] != ""
        search_params[key] = params[key]
      end
    end
    @events = Event.where(search_params)
  end

  # GET / events/1
  # GET / events/1.json
  def show
    all_bookings_of_event = Booking.where(event_id: @event.id)
    @users_of_event = []
    all_bookings_of_event.each do |booking|
      @users_of_event << booking.user_id
    end
    @users_of_event << @event.user.id
  end

  # GET / events/new
  def new
    @event = Event.new
  end



  # POST / events
  # POST / events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.user.picture == NilClass
      @event.user.picture = "https://d13yacurqjgara.cloudfront.net/users/8106/screenshots/2834222/first.png"
    else
    end

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # GET / events/1/edit
  def edit
  end

  # PATCH/PUT / events/1
  # PATCH/PUT / events/1.json
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE / events/1
  # DELETE / events/1.json
  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(  :title,
                                      :time_start,
                                      :time_end,
                                      :capacity,
                                      :picture,
                                      :picture_cache,
                                      :description,
                                      :location_title,
                                      :address_number,
                                      :address_street,
                                      :address_postcode,
                                      :address_city,
                                      :address_country,
                                      :distinguishing_feature,
                                      :wedding_list,
                                      :category,
                                      :keywords,
                                      :price,
                                      :user)
    end
end
