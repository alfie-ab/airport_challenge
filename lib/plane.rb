require_relative 'airport.rb'

class Plane

attr_reader :landed, :airport

  def initialize
    @landed = false
    @airport = []
  end

  def land(airport)
    @airport << airport
    @landed = true
  end

end
