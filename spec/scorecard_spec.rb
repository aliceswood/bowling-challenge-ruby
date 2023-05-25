require 'scorecard'


RSpec.describe 'Scorecard' do
  it 'initializes with a current score of 0 and empty score array' do
    scorecard = Scorecard.new
    expect(scorecard.current_score).to eq 0
    expect(scorecard.scores).to eq []
  end
end
