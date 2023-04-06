class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.map do |vehicle|
      vehicle.passengers
    end.flatten
  end

  def revenue
    park_revenue = 0
    @vehicles.map do |vehicle|
      park_revenue += vehicle.num_adults * @admission_price
    end
    park_revenue
  end
end