require 'plane.rb'

describe Plane do
  let (:airport) { double :airport }

  before(:each) do
    allow(airport).to receive(:airport).and_return(true)
  end

  it 'should be able to respond to the method' do
    expect(subject).to respond_to(:land).with(1).arguments
  end


  it 'should be able to land at an airpot' do
    subject.land(airport)
    expect(subject.landed).to eq true
  end
end
