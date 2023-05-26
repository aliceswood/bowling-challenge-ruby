require 'frame'

RSpec.describe 'Frame' do
  context 'it initializes and constructs' do
    it 'initializes with no roll points or roll results' do
      frame = Frame.new
      expect(frame.roll_results).to eq []
    end
  end

  context 'one frame' do
    it 'returns 0 when 2 gutter balls are rolled' do
      frame = Frame.new
      frame.rolls(0, 0)
      expect(frame.calculate_frame_points).to eq 0
    end

    it 'returns 6 for a 4 and a 2 rolled - regular roll' do
      frame = Frame.new
      frame.rolls(4, 2)
      expect(frame.calculate_frame_points).to eq 6
    end

    it 'returns 10 for a spare' do
      frame = Frame.new
      frame.rolls(4, 6)
      expect(frame.calculate_frame_points).to eq 10
    end
    
    it 'recognises if the first roll was a strike' do
      frame = Frame.new
      frame.rolls(10, 0)
      expect(frame.calculate_frame_points).to eq 10
      expect(frame.is_strike?).to eq true
    end

    it 'recognises if the rolls made a spare' do
      frame = Frame.new
      frame.rolls(4, 6)
      expect(frame.calculate_frame_points).to eq 10
      expect(frame.is_spare?).to eq true
    end
  end
end