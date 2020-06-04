class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @offers = current_user.offers
    @bookings = Booking.where.not(latitude: nil, longitude: nil)

    @markers = @bookings.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude
      }
    end
  end
end
