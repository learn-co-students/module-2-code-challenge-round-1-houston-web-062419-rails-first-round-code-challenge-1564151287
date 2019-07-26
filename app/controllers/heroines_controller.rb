class HeroinesController < ApplicationController
  @flag = 0

  def index
      @heroines = Heroine.all
    
  end

  def show
  	@heroine = Heroine.find(params[:id])
  	@power = @heroine.power
  end

  def new
  	@heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(h_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      redirect_to new_heroine_path
    end
  end

  def search

    @p = Power.find_by name: params[:q]
     @flag = @p

    @heroines =  Heroine.where power_id: @flag

      render  "index"
  end

  private

  def h_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
