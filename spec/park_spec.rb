require 'spec_helper'

RSpec.describe Park do
  before(:each) do
    @forest_park = Park.new({'unique_name' => 'forest park', 'admission_price' => 20})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@forest_park).to be_a(Park)
    end

    it 'has attributes' do
      expect(@forest_park.unique_name).to eq('forest park')
      expect(@forest_park.admission_price).to eq(20)
    end
  end
end