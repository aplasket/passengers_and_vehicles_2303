class Passenger
  attr_reader :name,
              :age
  def initialize(data)
    @name = data["name"]
    @age = data["age"]
  end

  def adult?
    return true if age >= 18
    false
  end
end