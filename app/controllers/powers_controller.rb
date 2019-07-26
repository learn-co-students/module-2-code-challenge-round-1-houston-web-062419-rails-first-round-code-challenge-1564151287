class PowersController < ApplicationController

  before_action :current_power, only: [:show]

  def index
    @powers = Power.all
  end

  def show
    @heroines = current_power.heroines
  end

  def create
    @Power = Power.new(power_params)
    redirect_to @power
  end

  private
  def current_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end

end
