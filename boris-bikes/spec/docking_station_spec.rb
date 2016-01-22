require 'docking_station'

RSpec.describe DockingStation do

  it { expect respond_to(:release_bike) }


  it 'return an instance of Bike' do
    subject.dock Bike.new
    expect(subject.release_bike).to be_a(Bike)
	end

	it 'expects bike to respond to working?' do
		expect(Bike.new.working?).to eq(true)
	end

  it 'responds to dock' do
    expect(subject.dock Bike.new)
  end

  it 'sees a docked bike' do
    subject.dock Bike.new
    expect(subject.bikes)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked_bikes' do
    expect(subject.instance_variable_get(:@bikes)).to eql(subject.dock Bike.new)
    # print "#{@bike}"
    # print " -->"
    # print "#{docking.dock(bikes)}"
  end

  it 'returns error' do
    expect { subject.release_bike }.to raise_error('No bikes available')
  end

  it 'does not accept bike being docked if a bike is already docked' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error('Docking station full')
  end
end
