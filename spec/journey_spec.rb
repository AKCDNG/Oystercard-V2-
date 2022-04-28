require 'journey'
require 'station'

describe Journey do

  subject(:journey) { Journey.new }

  describe '# start_journey' do
    it 'starts a journey and records entry station' do
      station_instance = Station.new('bank', 1)
      journey.start_journey(station_instance)
      
      expect(journey.current_journey[:entry]).not_to eq nil
    end
  end

end