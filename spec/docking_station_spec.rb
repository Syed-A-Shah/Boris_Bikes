require 'docking_station'

describe DockingStation do
#  it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it "no bikes available" do
      expect { subject.release_bike }.to raise_error "bike not present"
    end

    it "no error when bike available" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

#  it { is_expected.to respond_to(:dock).with(1).argument }

#  it { is_expected.to respond_to(:bike)}

  describe '#dock' do
    it 'docks a bike' do
      all_bikes = []
      bike = Bike.new
      all_bikes = subject.dock(bike)
      expect(subject.bike).to eq all_bikes
    end

    it 'can store up to X bikes' do
      expect( DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new)}).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'returns error when more than X bikes' do
      expect { (DockingStation::DEFAULT_CAPACITY+1).times {subject.dock(Bike.new)}}.to raise_error "Docking station full"
    end
  end

  end
