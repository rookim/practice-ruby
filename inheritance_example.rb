class Vehicle
  attr_accessor :speed, :direction, :mileage

  def initialize(options_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :make, :model, :year

  def initialize(options_hash)
    super
    @make = options_hash[:make]
    @model = options_hash[:model]
    @year = options_hash[:year]
    @mileage = options_hash[:mileage]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :type, :weight

  def initialize(options_hash)
    super
    @type = options_hash[:type]
    @weight = options_hash[:weight]
    @mileage = options_hash[:mileage]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

honda = Car.new(make: "hyundai", model: "elantra", year: "2015", mileage: 155000)
yamamoto = Bike.new(type: "mountain bike", weight: "50 grams", mileage: 50000)

honda.honk_horn
yamamoto.ring_bell

puts honda.speed
honda.accelerate
puts honda.speed

puts honda.model
puts yamamoto.type