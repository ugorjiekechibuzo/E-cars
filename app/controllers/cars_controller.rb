class CarsController < ApplicationController


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
    params.require(:car).permit(:make, :model, :closing_time)
  end
end
