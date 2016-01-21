require_relative 'docking_station'
class Bike

  def working?
  	true
  end

  def dock(dockingstation)
    raise "Station Full" if dockingstation.full?
    dockingstation.bikes << self
  end


end
