class MyCar

  attr_accessor :color
  attr_reader :year

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
end

geo = MyCar.new 1993, 'metro', 'green'
geo.current_speed
geo.speed_up 10
geo.current_speed
geo.brake 5
geo.current_speed
geo.shut_down
geo.current_speed
puts geo.year
puts geo.color
geo.color = 'blue'
puts geo.color