class Vehicle
  attr_reader :year,
              :name,
              :make, 
              :speeding
  def initialize(year, name, make)
    @name = name
    @year = year
    @make = make
    @speeding = false
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end
end