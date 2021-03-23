class PagesController < ApplicationController
  def home
    @ships = Ship.all.limit(3)
  end
end
