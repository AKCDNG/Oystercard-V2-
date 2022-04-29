# start_station(station)
# exit_station(station)
# calc fare

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
    @current_journey[:entry] != nil ? true : false
  end

  def reset_journey
    @current_journey = {entry: nil, exit: nil}
  end

  def fare
    @current_journey[:entry] != nil ? FARE : PENALTY_FARE
  end

end