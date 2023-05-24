class SearchController < ApplicationController

  def index
    @fuel_station = FuelFacade.nearest_station(params[:location])
  end

end