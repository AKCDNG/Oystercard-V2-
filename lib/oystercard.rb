require_relative 'journey'
require_relative 'station'

class Oystercard

  MAX_BALANCE = 90
  MIN_BALANCE = 1

  attr_reader :balance, :journey_history, :new_journey

  def initialize
    @balance = 0
    @journey_history = []
    @journey = Journey.new
  end

  def top_up(money)
    fail "funds cannot be added: maximum balance £#{MAX_BALANCE}" if max_balance_exceeded
    increase_money(money)
  end

  def touch_in(station) # station needs to be instance of Station class
    fail "Insufficient funds" if @balance < MIN_BALANCE
    # penalty path
    if @journey.on_journey?
      deduct_money
      @journey_history << @journey.current_journey
    end
    # happy path
    @journey = Journey.new
    @journey.start_journey(station)
  end

  def touch_out(station) # station needs to be instance of Station class
    @journey.end_journey(station)
    deduct_money # here penalty path is implemented at payment only
    @journey_history << @journey.current_journey
    @journey.reset
  end

  private

  def max_balance_exceeded
    @balance >= MAX_BALANCE
  end

  def deduct_money
    @balance -= @journey.fare
  end

  def increase_money(money)
    @balance += money
  end

end
 