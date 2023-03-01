class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_rental, only: %i[show edit update destroy]

  def index
    @rentals = Rental.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    if @rental.save
      flash[:success] = "Rental was successfully created."
      redirect_to rental_path(@rental)
    else
      flash[:error] = "There was an error saving the rental."
      render :new
    end
  end

  def edit
  end

  def update
    if @rental.update(rental_params)
      redirect_to rental_path(@rental)
    else
      render :edit
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:title, :description, :address, :price_per_day, :rating, :user_id, photos: [])
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
