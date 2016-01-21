class Bike
  def working?
  	true
  end
  def dock(dockingstation)
    raise "Station Full" if dockingstation.bikes.length >= 20
    dockingstation.bikes << self
  end
end
