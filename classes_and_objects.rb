class MyCar
  @@gas_mileage

  attr_accessor :color
  attr_reader :year

  def initialize year, color, model
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up amount
    @current_speed += amount
  end

  def brake amount
    @current_speed -= amount
  end

  def shut_off
    @current_speed = 0
  end

  def spray_paint color
    self.color = color
  end

  def self.gas_mileage fuel, distance
    distance / fuel
  end

  def to_s
    "This is a #{color} #{year} #{@model}."
  end
end

geo = MyCar.new 1993, 'green', 'metro'
puts geo.year
puts geo.speed_up 55
puts geo.brake 10
puts geo.shut_off
puts geo.color
geo.color = 'blue'
puts geo.color
puts MyCar.gas_mileage 2, 20
puts geo
p geo