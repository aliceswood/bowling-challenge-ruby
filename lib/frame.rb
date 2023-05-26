class Frame
  attr_accessor :calculate_frame_points

  def initialize(roll1, roll2)
    @roll_results = [roll1, roll2]
  end

  def calculate_frame_points
    @roll_results.reduce(:+)
  end

  def is_strike?
    @roll_results == [10, 0]
  end

  def is_spare?
    self.calculate_frame_points == 10 && !is_strike?
  end
end


