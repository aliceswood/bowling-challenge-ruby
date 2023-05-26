require 'frame'

class Scorecard
  def initialize
    @frame_array = []
  end

  def total_score
    @frame_array.reduce(0) do |sum, frame|
      sum + frame.calculate_frame_points
    end
  end

  def add_frame(roll1, roll2)
    @frame_array << Frame.new(roll1, roll2)
  end
end
