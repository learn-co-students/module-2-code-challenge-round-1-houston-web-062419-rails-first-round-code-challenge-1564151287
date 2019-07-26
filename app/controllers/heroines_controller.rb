class HeroinesController < ApplicationController

  before_action :current_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
    # @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.create(heroines_params)

    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
      #heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end

  end

  private
  def heroines_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def current_heroine
    @heroine = Heroine.find(params[:id])
  end

end