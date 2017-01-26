require 'spec_helper'

RSpec.describe Line do
  let(:x1) { 1 }
  let(:y1) { 1 }
  let(:start_point) { Point.new(x1, y1) }
  let(:x2) { 4 }
  let(:y2) { 5 }
  let(:end_point) { Point.new(x2, y2) }
  let(:line) { Line.new(start_point, end_point) }

  it 'has attribute reader on start_point ' do
    expect(line).to respond_to(:start_point)
  end

  it 'has attribute reader on end_point ' do
    expect(line).to respond_to(:end_point)
  end

  it 'has attribute setter on start_point ' do
    expect(line).to respond_to(:start_point=)
  end

  it 'has attribute setter on end_point ' do
    expect(line).to respond_to(:end_point=)
  end

  it 'sets start_point and end_point to initialization' do
    expect(line.start_point).to eq(start_point)
    expect(line.end_point).to eq(end_point)
  end

  describe 'length' do
    it 'returns length of the line' do
      expect(line.length).to eq(5)
    end
  end

  describe 'longer_than?' do
    context 'when line is longer than line passed' do
      it 'returns true' do
        second_line=Line.new(Point.new(1,1), Point.new(2,2))
        expect(line.longer_than?(second_line)).to eq(true)
      end
    end

    context 'when line is shorter than argument passed' do
      it 'returns false' do
        second_line=Line.new(Point.new(1,1), Point.new(5,5))
        expect(line.longer_than?(second_line)).to eq(false)
      end
    end

    context 'when line is equal to argument passed' do
      it 'returns false' do
        second_line=Line.new(start_point, end_point)
        expect(line.longer_than?(second_line)).to eq(false)
      end
    end
  end
end
