class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def release_bike
    # print "#{@bike.length}"
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    #print "#{@bike.length}"
    raise 'Docking station full' if full?
    @bikes << bike
    # if @bike.length > 0
    #   raise 'Docking station full'
    # else
    #   @bike << bike
    # end
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.length == 0
  end



end













