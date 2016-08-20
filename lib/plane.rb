require_relative 'airport.rb'

class Plane

attr_reader :landed

  def initialize
    @landed = false
  end

  def land(airport)
    @landed = true
  end

end
