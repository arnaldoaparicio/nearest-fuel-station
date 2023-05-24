require 'rails_helper'


RSpec.describe FuelService do
  it 'returns the nearest electric fuel station' do
    fuel_data = FuelService.nearest_station_address('1331 17th St LL100, Denver, CO 80202')

    expect(fuel_data).to be_a Hash
    expect(fuel_data[:fuel_stations]).to be_an Array

    first_station = fuel_data[:fuel_stations].first

    expect(first_station).to have_key :station_name
    expect(first_station).to have_key :street_address
    expect(first_station).to have_key :fuel_type_code
    expect(first_station).to have_key :access_days_time
  end

end