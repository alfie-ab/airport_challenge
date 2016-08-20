require 'plane.rb'

describe Plane do
  let (:airport) { double :airport }

  before(:each) do
    allow(airport).to receive(:placeholder).and_return(true)
  end

  it 'should be able to respond to the method land' do
    expect(subject).to respond_to(:land).with(1).arguments
  end


  it 'should be able to land at an airpot' do
    subject.land(airport)
    expect(subject.airport).to eq [airport]
  end

  it 'should report that it has landed' do
    subject.land(airport)
    expect(subject.landed).to eq true
  end

  it 'should be able to respond to the method take off' do
    expect(subject).to respond_to(:take_off)
  end

  it 'should be able to take off from an airport' do
    subject.take_off
    expect(subject.airport).to eq []
  end

  it 'should change its landed status to false to show it is no longer at an airport' do
    subject.take_off
    expect(subject.landed).to eq false
  end

  it 'should raise an error if you try to land at another airport while landed' do
    subject.land(airport)
    expect{subject.land(airport)}.to raise_error(RuntimeError)
  end

end
