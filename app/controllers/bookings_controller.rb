class BookingsController < ApplicationController
  
  def index
    @user = current_user
    @ships = Ship.all
    @bookings = Booking.all
  end
  
  def new
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new
  end

  def create
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new(booking_params)
    @booking.ship = @ship
    @booking.user = current_user
    if @booking.save
      redirect_to ship_path(@ship)
    else
      render :new
    end
  end

private

def booking_params
  params.require(:booking).permit(:start_time, :end_time, :user_id, :ship_id)
end

end