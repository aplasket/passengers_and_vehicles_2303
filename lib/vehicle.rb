class Vehicle
  attr_reader :year,
              :name,
              :make
  def initialize(year, name, make)
    @name = name
    @year = year
    @make = make
  end
end