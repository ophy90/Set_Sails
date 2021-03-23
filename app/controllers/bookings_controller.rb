class BookingsController < ApplicationController
  
  def new
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new
  end


private

def booking_params
  params.require(:booking).permit(:start_date, :end_date, :user_id, :ship_id)
end

end
