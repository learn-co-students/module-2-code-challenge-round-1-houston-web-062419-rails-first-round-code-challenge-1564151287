class PowersController < ApplicationController

  before_action :current_power, only: [:show]

  def index
    @powers = Power.all
  end

  def show
    @heroines = @power.heroines
    @powers = Power.all
  end
  
  private

  def powers_params
      params.require(:power).permit(:name)
  end

  def current_power
      @power = Power.find(params[:id])
  end

end
