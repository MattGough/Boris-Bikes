require "bike"
describe Bike do
 it {is_expected.to respond_to :working?}
 describe '#dock'do
    it 'responds to dock with one argument' do
      expect(subject).to respond_to(:dock).with(1).argument
    end
    it 'returns itself when passed dock'do
      expect(subject.dock(DockingStation.new)).to eq subject
    end
    it 'raises error when bike already docked'do
    dockingstation = DockingStation.new
    subject.dock(dockingstation)
      expect{subject.dock(dockingstation)}.to raise_error("Station Full")
    end
end
end
