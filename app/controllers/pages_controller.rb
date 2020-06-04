class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @offers = current_user.offers
    @bookings = Booking.geocoded

    @markers = @bookings.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
