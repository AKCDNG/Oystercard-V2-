class Journey

  FARE = 1
  PENALTY_FARE = 6

  attr_reader :current_journey

  def initialize
    @current_journey = {entry: nil, exit: nil}
  end

  def start_journey(station_instance)
    @current_journey[:entry] = station_instance
  end

  def end_journey(station_instance)
    @current_journey[:exit] = station_instance
  end

  # def on_journey?
  #   @current_journey[:entry] != nil ? true : false
  # end

  def reset
    @current_journey = {entry: nil, exit: nil}
  end

  def incomplete_on_touch_in?
    @current_journey[:entry] != nil && @current_journey[:exit] == nil
  end

  def incomplete_on_touch_out?
    @current_journey[:entry] == nil
  end

  def fare
    incomplete_on_touch_in? || incomplete_on_touch_out? ? PENALTY_FARE : FARE
  end

end