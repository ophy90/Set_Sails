class ShipsController < ApplicationController
  def index
    if params["location"].present? || params["category"].present?
      # @ships = Ship.where("location ILIKE ?", "%#{params["location"]["category"]}%")
      @ships = Ship.where(location:params["location"]).where(category:params["category"])
    else
      @ships = Ship.all
    end
    raise
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


  def search_params
    params.require(:ship).permit(:location, :category)
  end


end
