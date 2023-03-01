class BookingsController < ApplicationController
  def create
    @rental = Rental.find(params[:rental_id])
    @booking = Booking.new(booking_params)
    @booking.total_price = @rental.price_per_day * (@booking.end_date - @booking.start_date).to_i
    @booking.rental = @rental
    @booking.user = current_user
    if @booking.save
      redirect_to rental_path(@rental)
    else
      render "rentals/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
