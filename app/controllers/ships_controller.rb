class ShipsController < ApplicationController
  def index
    if params[:query].present?
      @ships = Ship.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @ships = Ship.all
    end
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def new
    @ship = Ship.new
  end

  private

  def ship_params
    params.require(:ship).permit(:name, :description, :category, :location, :price, :photo)
  end

end
