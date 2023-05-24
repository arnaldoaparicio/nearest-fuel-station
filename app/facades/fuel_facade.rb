class FuelFacade
  def self.nearest_station(address)
    json = FuelService.nearest_station_address(address)
    FuelStation.new(json[:fuel_stations][0])
  end
end