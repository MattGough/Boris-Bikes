require "docking_station"
describe DockingStation  do
	it { is_expected.to respond_to :release_bike }

	it 'releases working bikes' do
	bike = subject.release_bike
	expect(bike).to be_working
end
	it 'responds to bike'do
	expect(subject.bike).to eq @bike
end
	#it 'allows you to view a bike'
	#bike = Bike.new
	#bike.dock
	#expect(docking_station.bike)to eq(bike)

end
