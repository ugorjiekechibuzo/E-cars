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
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:make, :model)
  end
end
