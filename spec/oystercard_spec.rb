require 'oystercard'

describe Oystercard do

  subject(:oystercard) { described_class.new }

  let(:station) { double :station }

  it 'creates an instance of Oystercard' do
    expect(oystercard).to be_instance_of(Oystercard)
  end

  describe '# journey_history' do
    it 'records and returns journey history' do
      oystercard.top_up(Oystercard::MAX_BALANCE)
      3.times { oystercard.touch_in(station); oystercard.touch_out(station) }
      expect(oystercard.show_journey_history).not_to be_empty
    end
  end

  describe '# current_journey' do
    it 'records entry and exit station' do
      oystercard.top_up(Oystercard::MAX_BALANCE)
      oystercard.touch_in(station)
      oystercard.touch_out(station)
      expect(oystercard.show_journey_history[0]).to eq({:entry=>station, :exit=>station})
    end
  end

  describe '# add money' do
    it 'responds to top_up with 1 argument' do
      expect(oystercard).to respond_to(:top_up).with(1).argument
    end

    it 'does not allow user to add more than maximum funds' do
      oystercard.top_up(Oystercard::MAX_BALANCE)
      expect { oystercard.top_up(1) }.to raise_error 'funds cannot be added: maximum balance £90'
    end


    it 'returns balance' do
      expect(oystercard.show_balance).to eq(0)
    end
  end
 
  describe '# touch_out' do
    it 'can only touch_out if touched in' do
      expect { oystercard.touch_out(station) }.to raise_error "You're not touched in"
    end

    it "removes fare from balance" do
      oystercard.top_up(Oystercard::MIN_BALANCE)
      oystercard.touch_in(station)
      expect{ oystercard.touch_out(station) }.to change {oystercard.show_balance}.by(-Oystercard::MIN_BALANCE)
    end
  end

  describe "# touch_in" do
    it "refuses entry unless minimum balance is #{Oystercard::MIN_BALANCE}" do
      expect { oystercard.touch_in(station) }.to raise_error "Insufficient funds"
    end

    it "raises an error to touch_in twice" do
      oystercard.top_up(Oystercard::MAX_BALANCE)
      oystercard.touch_in(station)
      expect{ oystercard.touch_in(station)}.to raise_error "Already touched in"
    end
  end

end
