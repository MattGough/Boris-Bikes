require_relative 'bike'

class DockingStation
  def initialize
    @bike
  end
  attr_accessor :bike
  
  def release_bike
  	raise "No bikes" if @bike == nil 
    @bike
  end

end
