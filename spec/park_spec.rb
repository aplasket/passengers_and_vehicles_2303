require 'spec_helper'

RSpec.describe Park do
  before(:each) do
    @forest_park = Park.new({:name => 'forest park', :admission_price => 20})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@forest_park).to be_a(Park)
    end

    it 'has attributes' do
      expect(@forest_park.name).to eq('forest park')
      expect(@forest_park.admission_price).to eq(20)
      expect(@forest_park.vehicles).to eq([])
    end
  end

  before(:each) do
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic") 
    @vehicle_2 = Vehicle.new("2008", "Toyota", "Prius") 
  end
  
  describe '#vehicle array' do
    it 'can add vehicle objects and return an array' do
      @park.add_vehicle(@vehicle_1)
      @park.add_vehicle(@vehicle_2)
      expect(@forest_park.vehicles).to eq([@vehicle_1, @vehicle_2])
    end
  end

end