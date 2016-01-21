require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end
  attr_accessor :bikes

  def release_bike
  	raise "No bikes" if @bikes.empty?
    @bikes.pop
  end
  
  def full?
    @bikes.length >= 20
  end

end
