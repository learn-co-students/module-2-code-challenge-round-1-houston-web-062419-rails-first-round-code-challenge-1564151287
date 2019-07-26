class HeroinesController < ApplicationController
  before_action:current_heroine, only:[:show, :edit, :update, :destroy]
  def index
    @heroines = Heroine.all
  end
  def show
    @power = @heroine.power 
  end
  def new
    @heroine = Heroine.new
  end
  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.validate?
      @heroine.save
      redirect_to :@heroine 
    else 
      redirect_to :new_heroine_path
    end
  end
  def edit 
    # @powers = Power.all
  end
  def update
    @heroine.update(heroine_params)
    redirect_to :@heroine
  end
  def destroy
    @heroine.destroy
    redirect_to :heroines_path
  end  
  private
  def current_heroine
    @heroine = Heroine.find(params[:id])
  end
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end 
end
