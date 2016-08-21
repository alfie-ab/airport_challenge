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
    fail "This airport is full" if (full? || weather?)
    @spaces << plane
    plane.landed = true
  end

  def take_off(plane)
    fail "This plane is already in flight" if (!@spaces.include? plane || weather?)
    @spaces.pop
    plane.landed = false
  end

  private

  def full?
    @spaces.count >= @capacity
  end

  def weather?
    raise "The weather is too stormy, plane cannot land!" if weather_generator <= 0
  end

end
