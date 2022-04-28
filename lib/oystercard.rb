class Oystercard
  MAX_BALANCE = 90
  MIN_BALANCE = 1

  def initialize
    @balance = 0
    @journey_history = []
    @current_journey = {entry: nil, exit: nil}
  end

  def show_balance
    @balance
  end

  def show_journey_history
    @journey_history
  end

  def top_up(money)
    fail "funds cannot be added: maximum balance £#{MAX_BALANCE}" if max_balance_exceeded
    increase_money(money)
  end

  def touch_in(station)
    fail "Insufficient funds" if @balance < MIN_BALANCE
    @current_journey[:entry] = station
  end

  def touch_out(station)
    fail "You're not touched in" unless on_journey?
    deduct_money(MIN_BALANCE)
    @current_journey[:exit] = station
    @journey_history << @current_journey
  end

  def on_journey?
    @current_journey[:entry] == nil ? false : true
  end

  private
  def max_balance_exceeded
    @balance >= MAX_BALANCE
  end

  def deduct_money(money)
    @balance -= money
  end

  def increase_money(money)
    @balance += money
  end
end
 