class Frame
  attr_accessor :roll_results, :roll_points

  def initialize
    @roll_results = []
    @roll_points = 0
  end

  def roll(pins_knocked_over)
    @roll_results << pins_knocked_over
  end

  def calculate_roll_points

  end
end


