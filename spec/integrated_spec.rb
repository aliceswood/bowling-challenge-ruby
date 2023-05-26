require 'scorecard'

RSpec.describe 'integration' do
  it 'adds a frame with 2 regular rolls to the scorecard' do
    scorecard = Scorecard.new
    scorecard.add_frame(4, 2)
    expect(scorecard.total_score).to eq 6
  end

  it 'adds a frame with 2 regular rolls to the scorecard' do
    scorecard = Scorecard.new
    scorecard.add_frame(4, 2)
    scorecard.add_frame(2, 1)
    expect(scorecard.total_score).to eq 9
  end

  # it 'adds a strike to the scorecard' do
    
  # end


  # it 'tracks 1 strike and adds the bonus from the following 2 rolls' do
    
  # end

  # it ' tracks 1 spare and adds the bonus from the following roll' do
    
  # end

  # it 'tracks the perfect game of 10 strikes and gives 300 points' do
    
  # end

  # it 'tracks a gutter game and give 0 points' do
    
  # end
end