require_relative 'bike'

class DockingStation
  def initialize
    @bike
  end
  attr_accessor :bike
  
  def release_bike
  	Bike.new
  end
end
