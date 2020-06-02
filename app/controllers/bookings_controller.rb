class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = Offer.find(params[:offer_id])
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to offers_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :place, :confirmation)
  end
end
