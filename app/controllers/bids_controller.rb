class BidsController < ApplicationController


  def new
    @car = Car.find(params[:car_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)
    @bid.car = @car
    if @bid.save
      redirect_to car_path(@car)
    end
  end

  def edit
    @bid = Bid.find(params[:id])
    @car = Car.find(params[:car_id])
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.update(bid_params)
  end


  private

  def bid_params
    params.require(:bid).permit(:amount, :closing_time)
  end
end
