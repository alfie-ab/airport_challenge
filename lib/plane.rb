require_relative 'airport.rb'

class Plane

attr_reader :landed, :airport

  def initialize
    @landed = false
    @airport = []
  end

  def land(airport)
    fail "You can only land at one airport at a time" if full?
    @airport << airport
    @landed = true
  end

  def take_off
    @airport.pop
    @landed = false
  end

  private

  def full?
    @airport.count >= 1
  end

end
