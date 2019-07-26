class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def show
    @power = Power.find(params[:id])
  end

  def create
    @power = Power.create(power_params)
    
  end

  def power_params
    params.require(:power).permit(:name, :description) 
  end
end
