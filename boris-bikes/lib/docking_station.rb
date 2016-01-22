class DockingStation

  attr_reader :bikes, :capacity

   DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = Array.new
    @capacity = capacity 
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
    #
    end

  private

  def full?
    @bikes.length >= capacity
  end

  def empty?
    @bikes.length == 0
  end
end
