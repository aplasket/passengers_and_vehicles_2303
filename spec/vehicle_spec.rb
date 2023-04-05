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
    end
  end
end