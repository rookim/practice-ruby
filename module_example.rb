module Vehicle
  attr_accessor :speed, :direction, :mileage

  def initialize(options_hash)
    @speed = 0
    @direction = 'north'
    @make = options_hash[:make]
    @model = options_hash[:model]
    @year = options_hash[:year]
    @mileage = options_hash[:mileage]
    @type = options_hash[:type]
    @weight = options_hash[:weight]
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

class Car
  attr_accessor :make, :model, :year
  include Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  attr_accessor :type, :weight
  include Vehicle

  def ring_bell
    puts "Ring ring!"
  end
end

ro = Car.new(make: "hyundai", model: "elantra", year: 2015, mileage: 155000)
puts ro.weight