class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  def index
    @bookings = Booking.all
  end

  # GET / events/1
  # GET / events/1.json
  def show
    @booking = Booking.new
  end

  # GET / events/new
  def new
    @booking = Booking.new
  end

  # GET / events/1/edit
  def edit
  end

  # POST / events
  # POST / events.json
  def create
    @booking = booking.new(event_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def booking_params
    params
  end
end
