class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user

    # if @user.dj == true
    @offers = current_user.offers

    #   if @booking == offer.id
    #     return @booking
    #   else
    #     return "No booking yet"
    #   end

    # else
    #   @bookings = current_user.bookings
    # end

    # @bookings = current_user.bookings
    # @booking.offer =

    # if @booking.offer_id == offer.id
    #   @booking
    # end

    # if @user.dj == true
    #   @offers = current_user.offers
    #   @offers.each do |offer|
    #     @booking = Booking.find(offer.id)
    #     offer.booking
    #   end
    # else
    #   @bookings = current_user.bookings
    # end
  end
end
