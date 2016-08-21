class Plane

attr_reader :landed

  def initialize
    @landed = false
  end

  def confirm_landing(airport)
    fail "This plane has not landed" if airport.spaces == []
    @landed = true
  end

end
