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

  it 'tracks 1 strike and adds the bonus from the following 2 rolls' do
    scorecard = Scorecard.new
    scorecard.add_frame(10, 0)
    scorecard.add_frame(4, 2)
    expect(scorecard.total_score).to eq 22
  end

  it 'tracks 1 spare and adds the bonus from the following roll' do
    scorecard = Scorecard.new
    scorecard.add_frame(9, 1)
    scorecard.add_frame(4, 2)
    expect(scorecard.total_score).to eq 20
  end

  # it 'tracks the perfect game of 10 strikes and gives 300 points' do
    
  # end
end