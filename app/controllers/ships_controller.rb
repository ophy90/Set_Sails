class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def new
    @ship = Ship.new
  end
  
end
