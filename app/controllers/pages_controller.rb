class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @bookings = current_user.bookings
  end
end
