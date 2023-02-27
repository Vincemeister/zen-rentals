class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end
end
