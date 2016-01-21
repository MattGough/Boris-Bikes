require_relative 'bike'

class DockingStation
	DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end
  attr_accessor :bikes

  def release_bike
  	raise "No bikes" if @bikes.empty?
    @bikes.pop
  end
  
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

end
