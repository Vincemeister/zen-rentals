class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def create
    @rental = Rental.find(params[:rental_id])
    @booking = Booking.new(booking_params)
    @booking.total_price = @rental.price_per_day * (@booking.end_date - @booking.start_date).to_i
    @booking.rental = @rental
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to bookings_path
    else
      render "rentals/show"
    end
  end

  def show
    @rental = @booking.rental
    @owner = @rental.user
  end

  def index
    @bookings = Booking.where(user: current_user)
    @owner_bookings = Booking.where(rental: Rental.where(user: current_user))
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def accept
    @booking.status = "Accepted"
    @booking.save
    redirect_to booking_path(@booking)
  end

  def decline
    @booking.status = "Declined"
    @booking.save
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
