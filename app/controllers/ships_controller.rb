class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
         # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    if @ship.geocoded?
      @markers = [{
        lat: @ship.latitude,
        lng: @ship.longitude
      }]
    end
  end
  
  def new
    @ship = Ship.new
  end

  private

  def ship_params
    params.require(:ship).permit(:name, :description, :category, :location, :price, :photo)
  end

end
