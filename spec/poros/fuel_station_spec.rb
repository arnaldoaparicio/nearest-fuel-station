require 'rails_helper'

RSpec.describe FuelStation do
  it 'exists' do
    attributes = {
            access_code: 'public',
            access_days_time: '24 hours daily',
            access_detail_code: nil,
            cards_accepted: nil,
            date_last_confirmed: '2023-05-24',
            expected_date: nil,
            fuel_type_code: 'ELEC',
            groups_with_access_code: 'Public',
            id: 156608,
            open_date: '2020-05-22',
            owner_type_code: nil,
            status_code: 'E',
            restricted_access: nil,
            station_name: 'PLAZA GARAGE PLAZA GARAGE 1',
            station_phone: '888-758-4389',
            updated_at: '2023-05-24T00:28:44Z',
            facility_type: nil,
            geocode_status: 'GPS',
            latitude: 39.747112,
            longitude: -104.989279,
            city: 'Denver',
            intersection_directions: nil,
            plus4: nil,
            state: 'CO',
            street_address: '670 18th St',
            zip: '80202',
            country: 'US',
            distance: 0.12067,
            distance_km: 0.1942
        }

        fuel_station = FuelStation.new(attributes)

        expect(fuel_station).to be_a FuelStation
        expect(fuel_station.name).to eq('PLAZA GARAGE PLAZA GARAGE 1')
        expect(fuel_station.address).to eq('670 18th St, Denver, CO 80202')
        expect(fuel_station.access_times).to eq('24 hours daily')

  end
end