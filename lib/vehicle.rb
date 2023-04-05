class Vehicle
  attr_reader   :year,
                :name,
                :make, 
                :speeding
  attr_accessor :passengers
  
  def initialize(year, name, make)
    @name = name
    @year = year
    @make = make
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    count_adults = 0
    @passengers.map do |passenger|
      if passenger.adult?
        count_adults += 1
      end
    end
    count_adults
  end
end