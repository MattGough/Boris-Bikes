require "docking_station"
describe DockingStation  do
	it { is_expected.to respond_to :release_bike }

	# it 'releases working bikes' do
	# bike = subject.release_bike
	# expect(bike).to be_working
#end
	it 'responds to bike'do
	expect(subject.bike).to eq @bike
end
describe '#release_bike'do
    it 'raises error' do
        expect {(subject.release_bike)}.to raise_error("No bikes")
			end
    it 'releases working bike' do
        bike = Bike.new
        bike.dock(subject)
        expect(subject.release_bike).to eq bike
    end
	end
end
