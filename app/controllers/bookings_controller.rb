class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.offer = Offer.find(params[:offer_id])

    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to offers_path
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :place, :duration)
  end

  def total_price
    @offer = Offer.find(params[:offer_id])
    @booking.total_price = @offer.price_per_day * @booking.duration
  end

end
