class Vehicle
  attr_reader :color
  @@vehicles_created = 0

  def initialize year, model, color
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@vehicles_created += 1
  end

  def self.count
    "#{@@vehicles_created} vehicles have been created."
  end

  def speed_up mph
    @current_speed += mph
    puts "You accelerate by #{mph} mph."
  end

  def brake mph
    @current_speed -= mph
    puts "You decelerate by #{mph} mph."
  end

  def current_speed
    puts "Current speed is #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "You shut the vehicle down."
  end

  def spray_paint color
    @color = color
    puts "The #{@model} has been spray painted #{@color}."
  end

  def to_s
    "A #{@color} #{@year} #{@model}."
  end

  def self.gas_mileage gallons, miles
    puts "This vehicle gets #{miles / gallons} miles to the gallon."
  end

  def age
    calculate_age @year, Time.now.year
  end

  private

  def calculate_age birth, now
    now - birth
  end
end

module Loadable
  def can_tow? pounds
    pounds < 2000 ? "Let's tow!" : "That's too much."
  end
end

class MyCar < Vehicle
  DOORS = 4
end

class MyTruck < Vehicle
  include Loadable
  DOORS = 2
end

MyCar.gas_mileage 10, 100
geo = MyCar.new 1993, 'metro', 'green'
puts geo
geo.spray_paint 'orange'
puts geo.color

pickup = MyTruck.new 2010, 'ford', 'black'
puts pickup
pickup.shut_down
puts pickup.can_tow?(1500)
puts pickup.can_tow?(2500)

puts Vehicle.count

p Vehicle.ancestors
p MyCar.ancestors
p MyTruck.ancestors

puts geo.age
puts pickup.age