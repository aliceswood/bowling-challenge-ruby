require 'frame'

RSpec.describe 'Frame' do
  context 'it initializes and constructs' do
    it 'initializes with no roll points or roll results' do
      frame = Frame.new
      expect(frame.roll_results).to eq []
      expect(frame.frame_points).to eq 0
    end
  end

  context 'one frame' do
    it 'returns 0 when 2 gutter balls are rolled' do
      frame = Frame.new
      frame.roll(0)
      frame.roll(0)
      expect(frame.calculate_frame_points).to eq 0
    end

    it 'returns 6 for a 4 and a 2 rolled - regular roll' do
      frame = Frame.new
      frame.roll(4)
      frame.roll(2)
      expect(frame.calculate_frame_points).to eq 6
    end

    it 'returns 10 for a spare' do
      frame = Frame.new
      frame.roll(4)
      frame.roll(6)
      expect(frame.calculate_frame_points).to eq 10
    end

    it 'returns 10 for a strike and ends the go after 1 roll' do
      frame = Frame.new
      frame.roll(10)
      expect(frame.calculate_frame_points).to eq 10
      expect(frame.roll_results.length).to eq 1
    end

    it 'fails if another roll is attempted in the same frame following a strike' do
      frame = Frame.new
      frame.roll(10)
      expect(frame.calculate_frame_points).to eq 10
      expect{frame.roll(1)}.to raise_error("it is the end of this frame!")
    end
    
  end
end