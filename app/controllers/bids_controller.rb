class BidsController < ApplicationController


  def new
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)
  end


  private

  def bid_params
    params.require(:bid).permit(:amount)
  end
end
