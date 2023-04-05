require 'spec_helper'

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic") 
  end

  describe "#initialize" do
    it 'exists' do
      expect(@vehicle).to be_a(Vehicle)
    end

    it 'has attributes' do
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.name).to eq("Honda")
      expect(@vehicle.make).to eq("Civic")
      expect(@vehicle.speeding).to eq(false)
      expect(@vehicle.passengers).to eq([])
    end
  end

  describe "#speeding?" do
    it 'checks if vehicles is speeding' do
      expect(@vehicle.speeding?).to eq(false)
    end
  end

  describe '#speed' do
    it 'can speed' do
      @vehicle.speed
      
      expect(@vehicle.speeding?).to eq(true)
    end
  end

  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe '#add passenger' do
    it 'can add passengers to passengers array' do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)

      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
  end

  describe '#check num_adults' do
    it 'can check how many adults are in the vehicle' do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)

      expect(@vehicle.num_adults).to eq(2)
    end
  end
end