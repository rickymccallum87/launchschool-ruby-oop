class MyCar

  attr_reader :year, :color

  def initialize year, model, color
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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
    puts "The #{@model} has been spray painted #{color}."
  end

  def to_s
    "A #{@color} #{@year} #{@model}."
  end

  def self.gas_mileage gallons, miles
    puts "This vehicle gets #{miles / gallons} miles to the gallon."
  end
end

MyCar.gas_mileage 10, 100
geo = MyCar.new 1993, 'metro', 'green'
puts geo
geo.spray_paint 'orange'
puts geo.color