class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @user = User.find(current_user.id)
    @offer.user = @user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :price_per_day)
  end
end
