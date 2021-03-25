class ShipsController < ApplicationController
  def index
    if params[:location].present? && params[:category].present?
      @ships = Ship.where("location ILIKE ?", "%#{params[:location]}%").where("category ILIKE ?", "%#{params[:category]}%")
    elsif params[:location].present?
      @ships = Ship.where("location ILIKE ?", "%#{params[:location]}%")
      elsif params[:category].present?
        @ships = Ship.where("category ILIKE ?", "%#{params[:category]}%")
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


  def search_params
    params.require(:ship).permit(:location, :category)
  end


end
