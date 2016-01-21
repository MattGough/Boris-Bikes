require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end
  attr_accessor :bikes
  
  def release_bike
  	raise "No bikes" if @bikes.empty? == true
    @bikes.pop
  end

end
