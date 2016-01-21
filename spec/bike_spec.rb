require "bike"
describe Bike do
 it {is_expected.to respond_to :working?}

 it 'responds to dock with one argument' do
   bike = Bike.new
 expect(bike).to respond_to(:dock).with(1).argument
 end
 it 'returns itself when passed dock'do
 bike = Bike.new
  expect(bike.dock(DockingStation.new)).to eq bike
end
end
