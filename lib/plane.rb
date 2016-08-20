require_relative 'airport.rb'

class Plane

attr_reader :landed, :airport

  def initialize
    @landed = false
    @airport = []
  end

  def land(airport)
    fail "A plane can only land at one airport at a time" if full?
    @airport << airport
    @landed = true
  end

  def take_off
    fail "This plane is already in flight" if @airport.empty?
    @airport.pop
    @landed = false
  end

  private

  def full?
    @airport.count >= 1
  end

end
