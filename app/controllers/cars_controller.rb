class CarsController < ApplicationController
    
    def index
       @cars = Car.all 
    end
    
    def new
        @car = Car.new
    end
    
    def create
    @car = Car.new(car_params)
    if @car.save
        flash[:notice] = "Car sucessfully created"
        redirect_to car_path(@car)
    else
        render 'new'
    end
    end
    
    private
    
    def car_params
       params.require(:car).permit(:make, :name, :description, :picture) 
    end
    
end
