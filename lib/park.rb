class Park
  attr_reader :name,
              :admission_price,
              :vehicles,
              :passengers

  def initialize(park_info)
    @name = park_info[:name]
    @admission_price = park_info[:admission_price]
    @vehicles = []
    @passengers = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end
end