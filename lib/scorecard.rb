require 'frame'

class Scorecard
  def initialize
    @frame_array = []
    @total_frames = 10
  end

  def total_score
    score = 0
    @frame_array.each_with_index do |frame, index|
      score += frame.calculate_frame_points
      
      if frame.is_spare?
        next_frame = @frame_array[index + 1]
        bonus_points = next_frame.roll_results[0] 
        score += bonus_points

      elsif frame.is_strike?
        next_frame = @frame_array[index + 1]
        bonus_points = next_frame.roll_results[0] + next_frame.roll_results[1]
        score += bonus_points
      end
    end
    return score
  end

  def add_frame(roll1, roll2)
    @frame_array << Frame.new(roll1, roll2)
  end

end
