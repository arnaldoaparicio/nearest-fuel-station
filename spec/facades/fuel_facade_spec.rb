require 'rails_helper'

RSpec.describe FuelFacade do
  it '.nearest_fuel_station - address' do
    fuel_station = FuelFacade.nearest_station('1331 17th St LL100, Denver, CO 80202')
    
    expect(fuel_station).to be_a FuelStation
  end
end