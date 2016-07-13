class BookingsController < ApplicationController
  before_action :set_event, only: [:show, :create, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    # similaire à ligne du dessous, mais plus clean:
    #@booking = Booking.new(user_id: current_user.id, event_id: params[:event_id])
    @booking = Booking.new(user: current_user, event: @event)
    if @booking.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  def destroy
    @booking =  Booking.find(params[:id])
    if @booking.destroy
      redirect_to event_path(@event), notice: 'Booking was successfully destroyed.'
    else
      render "events/show"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:event_id])

    end

    def set_booking
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params
    end

end
