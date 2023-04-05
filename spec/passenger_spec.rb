require 'spec_helper'

RSpec.describe Passenger do

  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end
  describe '#initialize' do
    it 'exists' do
      expect(@charlie).to be_a(Passenger)
      expect(@taylor).to be_a(Passenger)
    end

    it 'has attributes' do
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
    end
  end

  describe '#adult' do
    it 'can check if it is adult' do
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
    end
  end
end