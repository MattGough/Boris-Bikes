class Bike
  def working?
  	true
  end
  def dock(dockingstation)
    raise "Station Full" if dockingstation.bike != nil
    dockingstation.bike= self
  end
end
