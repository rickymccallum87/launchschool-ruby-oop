class MyCar
  attr_accessor :year, :color, :model, :current_speed
  def initialize year, color, model
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up
  end

  def brake
  end

  def shut_off
  end
end