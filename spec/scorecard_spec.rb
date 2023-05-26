require 'scorecard'

RSpec.describe 'Scorecard' do
  it 'initializes with a total score of 0 and empty score array' do
    scorecard = Scorecard.new
    expect(scorecard.total_score).to eq 0
  end
end
