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

  def on_journey?
    (@current_journey[:entry] != nil && @current_journey[:exit] == nil) || 
    (@current_journey[:entry] == nil && @current_journey[:exit] != nil)
  end

  def reset
    @current_journey = {entry: nil, exit: nil}
  end

  def fare
    on_journey? ? PENALTY_FARE : FARE
  end

end