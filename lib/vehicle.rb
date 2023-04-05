class Vehicle
  attr_reader :year,
              :name,
              :make, 
              :speeding,
              :passengers
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
end