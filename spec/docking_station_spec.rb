require 'docking_station'

describe DockingStation do
  it 'releases the bike' do
    expect (release).to eq 'true'
  end
end
