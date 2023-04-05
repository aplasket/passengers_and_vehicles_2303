require 'spec_helper'

RSpec.describe Park do
  before(:each) do
    @forest_park = Park.new('forest park', 20)
    @yo_yo_park = Park.new('yo yo park', 5)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@forest_park).to be_a(Park)
      expect(@yo_yo_park).to be_a(Park)
    end

    it 'has attributes' do
      expect(@forest_park.name).to eq('forest park')
      expect(@forest_park.admission_price).to eq(20)
      expect(@yo_yo_park.admission_price).to eq(5)
      expect(@forest_park.vehicles).to eq([])
      expect(@forest_park.passengers).to eq([])
    end
  end

  before(:each) do
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    @vehicle_2 = Vehicle.new("2011", "VW", "Bug")
  end
  
  describe '#vehicle array' do
    it 'can add vehicle objects and return an array' do
      @forest_park.add_vehicle(@vehicle_1)
      @yo_yo_park.add_vehicle(@vehicle_2)

      expect(@forest_park.vehicles).to eq([@vehicle_1])
      expect(@yo_yo_park.vehicles).to eq([@vehicle_2])
    end
  end

  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @mia = Passenger.new({"name" => "Mia", "age" => 25})
    @theo = Passenger.new({"name" => "Theo", "age" => 11})
  end

  describe '#passenger array' do
    it 'can list all passengers' do
      @forest_park.add_vehicle(@vehicle_1)
      @yo_yo_park.add_vehicle(@vehicle_2)
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_1.add_passenger(@taylor)
      @vehicle_2.add_passenger(@mia)
      @vehicle_2.add_passenger(@theo)

      expect(@forest_park.passengers).to eq([@charlie, @jude, @taylor])
      expect(@yo_yo_park.passengers).to eq([@mia, @theo])
    end
  end

  describe '#revenue' do
    it 'calculates the revenue' do
      @forest_park.add_vehicle(@vehicle_1)
      @yo_yo_park.add_vehicle(@vehicle_2)
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_1.add_passenger(@taylor)
      @vehicle_2.add_passenger(@mia)
      @vehicle_2.add_passenger(@theo)

      expect(@forest_park.revenue).to eq(40)
      expect(@yo_yo_park.revenue).to eq(5)
    end
  end
end