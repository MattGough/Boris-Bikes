class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def release_bike
    # print "#{@bike.length}"
    raise 'No bikes available' unless @bikes.length != 0
    @bikes.pop
  end

  def dock(bike)
    #print "#{@bike.length}"
    raise 'Docking station full' unless @bikes.length < 20
    @bikes << bike
    # if @bike.length > 0
    #   raise 'Docking station full'
    # else
    #   @bike << bike
    # end
  end

end
