class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    # byebug
  end

  def new
    @heroine = Heroine.new
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def create
    @heroine = Heroine.new(hero_params)
    # byebug

      if @heroine.valid?
          @heroine.save
          redirect_to heroine_path(@heroine)
      else

          redirect_to new_heroine_path
      end
  

  end

  def hero_params
    params.require(:heroine).permit(:name, :super_name, :power_id) 
end

end
