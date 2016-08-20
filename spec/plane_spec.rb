require 'plane.rb'

describe Plane do
  let (:airport) { double :airport }

  before(:each) do
    allow(airport).to receive(:placeholder).and_return(true)
  end

  it 'should be able to respond to the method' do
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


end
