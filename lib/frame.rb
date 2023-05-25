class Frame
  attr_accessor :roll_results, :frame_points

  def initialize
    @roll_results = []
    @frame_points = 0
  end

  def roll(pins_knocked_over)
    if roll_results.length > 2
      fail "one frame is maximum 2 rolls"
    elsif @roll_results.reduce(:+) == 10
      fail "it is the end of this frame!"
    else 
      @roll_results << pins_knocked_over
    end
  end

  def calculate_frame_points
    @roll_results.reduce(:+)
  end

end


