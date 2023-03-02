class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @rentals = Rental.where(address: "Canggu")
  end

  def about
  end
end
