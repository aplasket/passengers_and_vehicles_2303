class Park
  attr_reader :unique_name,
              :admission_price

  def initialize(park_info)
    @unique_name = park_info['unique_name']
    @admission_price = park_info['admission_price']
  end
end