class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
    #@bids = @car.bids
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      @bid = @car.bids.order(created_at: :desc).first
      redirect_to edit_car_bid_path(@car, @bid)
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
  end


  private

  def car_params
    params.require(:car).permit(:make, :model)
  end
end
