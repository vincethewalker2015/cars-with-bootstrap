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
        flash[:success] = "Car sucessfully created"
        redirect_to car_path(@car)
    else
        render 'new'
    end
    end
    
    def show
       @car = Car.find(params[:id]) 
    end
    
    def edit
       @car = Car.find(params[:id]) 
    end
    
    def update
       @car = Car.find(params[:id])
       if @car.update(car_params)
           flash[:success] = "Car Details sucessfully updated"
           redirect_to car_path(@car)
       else
           render 'edit'
       end
    end
    
    def destroy
       @car = Car.find(params[:id])
       @car.destroy
       flash[:danger] = "Car details  deleted"
       redirect_to cars_path
    end
    
    private
    
    def car_params
       params.require(:car).permit(:make, :name, :price, :description, :picture) 
    end
    
end
