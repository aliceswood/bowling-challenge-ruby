require 'frame'

RSpec.describe 'Frame' do
  context 'it initializes and constructs' do
    it 'initializes with no roll points or roll results' do
      frame = Frame.new
      expect(frame.roll_results).to eq []
      expect(frame.roll_points).to eq 0
    end
  end

  context 'one frame' do
    it 'returns 0 when 2 gutter balls are rolled' do
      frame = Frame.new
      frame.roll(0)
      frame.roll(0)
      expect(frame.calculate_roll_points).to eq 0
    end

    it 'returns 6 for a 4 and a 2 rolled - regular roll' do
      frame = Frame.new
      frame.roll(4)
      frame.roll(2)
      expect(frame.calculate_roll_points).to eq 6
    end
  end
end