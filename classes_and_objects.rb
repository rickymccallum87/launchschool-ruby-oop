class MyCar
  attr_accessor :year, :color, :model, :current_speed
  def initialize year, color, model
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up amount
    self.current_speed += amount
  end

  def brake amount
    self.current_speed -= amount
  end

  def shut_off
    self.current_speed = 0
  end
end

geo = MyCar.new 1993, 'green', 'metro'
puts geo.year
puts geo.model
puts geo.current_speed
geo.speed_up 55
puts geo.current_speed
geo.brake 10
puts geo.current_speed
geo.shut_off
puts geo.current_speed