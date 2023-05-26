class Frame
  attr_accessor :roll_results, :frame_points

  def initialize
    @roll_results = []
    @frame_points = 0
  end

  def rolls(roll1, roll2)
    @roll_results << roll1
    if roll1 == 10
      roll2 = 0
      @roll_results << roll2
    else 
      @roll_results << roll2
    end
  end

  def calculate_frame_points
    @roll_results.reduce(:+)
  end

end


