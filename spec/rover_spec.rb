require_relative '../lib/rover'

describe Rover do

  before { @rover = Rover.new }

  it 'should start at coords 0,0 heading N' do
    @rover.location.should eq [0,0]
    @rover.heading.should eq "N"
  end

  it 'should turn left twice' do
    2.times { @rover.left }
    @rover.heading.should eq "S"
  end

  it 'should turn right twice' do
    2.times { @rover.right }
    @rover.heading.should eq "S"
  end

  it 'should move 2 positions' do
    2.times { @rover.move }
    @rover.location.should eq [0,2]
  end
  
  it 'should handle a series of moves' do
    @rover.right
    @rover.move
    @rover.move
    @rover.left
    @rover.move
    @rover.move
    @rover.left
    @rover.move
    @rover.location.should eq [1,2]
  end

end
