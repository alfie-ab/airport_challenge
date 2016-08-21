describe Plane do

  it 'should respond to the method' do
    expect(subject).to respond_to(:confirm_landing).with(1).arguments
  end

end
