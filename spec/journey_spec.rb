require 'journey'
require 'station'

describe Journey do

  subject(:journey) { Journey.new }
  let(:entry_station) {double(:station, :name => 'Bank', :zone => 1)}
  let(:exit_station) {double(:station, :name => 'Green Park', :zone => 1)}

  describe '# start_journey' do
    it 'starts a journey and records entry station' do
      journey.start_journey(entry_station)
      
      expect(journey.current_journey[:entry]).not_to eq nil
    end
  end
    
  describe '# end_journey' do
    it 'ends a journey and records exit station' do
      journey.end_journey(exit_station)
      
      expect(journey.current_journey[:exit]).not_to eq nil
    end
  end

  it "tells user if they are on a journey" do
    journey.start_journey(entry_station)

    expect(journey).to be_on_journey
  end

  it "has a default fare" do
    expect(Journey::FARE).to eq 1
  end

  it 'calculates the fare if on_journey? is false' do
    journey.start_journey(entry_station)
    journey.end_journey(exit_station)
    expect(journey.fare).to eq Journey::FARE
  end

  it 'has a default penalty fare' do
    expect(Journey::PENALTY_FARE).to eq 6
  end

  it 'calculates the fare if on_journey? is true' do
    journey.start_journey(entry_station)
    expect(journey.fare).to eq Journey::PENALTY_FARE
  end

end