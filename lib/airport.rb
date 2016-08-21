require_relative 'plane.rb'

class Airport

attr_reader :spaces

  def initialize(capacity = 3)
    @spaces = []
    @capacity = capacity
  end

  def weather_generator
    rand(50)
  end

  def land(plane)
    fail "This is airport is full" if full?
    @spaces << plane
  end

  def take_off(plane)
    fail "This plane is already in flight" if @spaces.empty?
    @spaces.pop
  end

  private

  def full?
    @spaces.count >= @capacity
  end

end
