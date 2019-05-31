require_relative 'bike'

class DockingStation
#  bike_capacity_full = false

  # if bike_capacity_full = true
  #  return "no more bikes can be stored"
  # else
  #  subject.dock(bike)e
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Docking station full' if @bike
    @bike = bike
  end

#  def bike
#    @bike
#  end
end
