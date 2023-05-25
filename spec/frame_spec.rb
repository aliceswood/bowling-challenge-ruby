require 'frame'

RSpec.describe 'Frame' do
  context 'it initializes and constructs' do
    it 'initializes with no roll points or roll results' do
      frame = Frame.new
      expect(frame.roll_results).to eq []
      expect(frame.roll_points).to eq 0
    end
  end

  context
end