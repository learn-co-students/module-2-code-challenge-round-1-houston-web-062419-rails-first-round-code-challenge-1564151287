class HeroinesController < ApplicationController
  
  before_action :current_heroine, only: [:show, :edit, :update, :destroy]
  def index
    @heroines = Heroine.all
  end

  def show

  end

  def new
    @hero = Heroine.new
    @powers = Power.all
  end

  def create
    @hero = Heroine.new(hero_params)
    if @hero.valid?
      @hero.save(hero_params)
      redirect_to @hero
    else
      redirect_to new_heroine_path
    end

  end







  private
  def current_heroine
    @hero = Heroine.find(params[:id])
  end

  def hero_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
