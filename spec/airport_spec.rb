require 'airport.rb'

describe Airport do
  let (:plane) { double :plane }

  before(:each) do
    allow(plane).to receive(:landed).and_return(false)
  end

  it 'should be able to respond to the method land' do
    expect(subject).to respond_to(:land).with(1).arguments
  end

  it 'should be able to recieve a landing plane' do
    subject.land(plane)
    expect(subject.spaces).to eq [plane]
  end

  it 'should be able to respond to the method take off' do
    expect(subject).to respond_to(:take_off).with(1).arguments
  end

  it 'should be able to take off from an airport' do
    subject.land(plane)
    subject.take_off(plane)
    expect(subject.spaces).to eq [] #need to make this better, there still could be a plane landed
  end

  it 'should raise an error if you plane tries to land at an airport already at capacity' do
    3.times {subject.land(plane)}
    expect{subject.land(plane)}.to raise_error(RuntimeError)
  end

  it 'should raise an error if trying to take off when not at an airport' do
    expect{subject.take_off(plane)}.to raise_error(RuntimeError)
  end

  it 'should be able to receive the weather generator method' do
    expect(subject).to respond_to(:weather_generator)
  end

  it 'should not allow a plane to take off when it is stormy' do
    subject.land(plane)
    subject.stub(:weather_generator).and_return(5)
    expect{subject.take_off(plane)}.to raise_error(RuntimeError)
  end

end
