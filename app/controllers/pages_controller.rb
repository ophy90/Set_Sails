class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @ships = Ship.all.limit(3)
  end
end
