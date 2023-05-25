class Frame
  attr_accessor :roll_results, :roll_points

  def initialize
    @roll_results = []
    @roll_points = 0
  end

  def roll(pins_knocked_over)
    if roll_results.length > 2
      fail "one frame is maximum 2 rolls"
    else 
      @roll_results << pins_knocked_over
    end
  end

  def calculate_roll_points
    @roll_results.reduce(:+)
  end
end


