require "station"

describe Station do

  # subject(:station) { described_class.new }

  it "makes an instance of station" do
    expect(Station.new).to be_instance_of(Station)
  end

  describe "# name" do
    it 'returns the name of the station' do
      station_name = 'station name'
      new_station = Station.new(station_name)
      
      expect(new_station.name).to eq 'station name' 
    end
  end

  describe "# zone" do
    it 'returns the zone of the station' do
      station_name = 'station name'
      zone = 1
      new_station = Station.new(station_name, zone)

      expect(new_station.zone).to eq 1
    end
  end
end
 