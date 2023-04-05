class Passenger
  attr_reader :name,
              :age, 
              :driver
  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @driver = false
  end

  def adult?
    return true if age >= 18
    false
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end