class Bike
  def working?
  	true
  end
  def dock(dockingstation)
    dockingstation.bike= self
  end
end
