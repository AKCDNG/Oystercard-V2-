require 'oystercard'

describe Oystercard do
  # arrange
  # subject.add_money
  # assert
  # expect(subject.add_money).to eq

  #plan to remove this test when refactoring once we have respond to money with 1 argument working

  it 'responds to add_money with 1 argument' do
    expect(subject).to respond_to(:add_money).with(1).argument
  end

  describe '#add money' do
    it 'does not allow user to add more than maximum funds' do
      subject.add_money(90)
      expect { subject.add_money(1) }.to raise_error 'funds cannot be added: maximum balance £90'
    end
  end

  it 'responds to balance' do
    subject.balance
    expect(subject).to respond_to :balance
  end

  it 'returns balance' do
    expect(subject.balance).to eq(0)
  end

  it 'creates an instance of Oystercard' do
    expect(subject).to be_instance_of(Oystercard)
  end

  it 'responds to deduct_money with 1 argument' do
    expect(subject).to respond_to(:deduct_money).with(1).argument
  end
end
