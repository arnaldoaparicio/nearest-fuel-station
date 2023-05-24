class FuelService

  def self.connection
    Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json') do |faraday|
      faraday.params['api_key'] = ENV['fuel_station_key']
    end
  end

  def self.nearest_station_address(address)
    station = connection.get do |faraday|
      faraday.params['location'] = address
      faraday.params['fuel_type'] = 'ELEC'
    end
    JSON.parse(station.body, symbolize_names: true)
  end
end