require 'frame'

class Scorecard
  attr_accessor :current_score, :score_array
  
  def initialize
    @current_score = 0
    @score_array = []
  end

  def current_score
    @current_score 
  end

  def scores
    @score_array
  end

end
