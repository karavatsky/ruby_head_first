class Rectangle
  attr_reader :width, :height

  def width=(value)
    if value < 0
      raise "Width mast be positive."
    end
    @width = value
  end

  def height=(value)
    if value < 0
      raise "Height mast be positive."
    end
    @height = value
  end

  def calc_resolution
    @width * @height
  end

end

class Square < Rectangle
  def width=(value)
    @width = value
    @height = value
  end

  def height=(value)
    @width = value
    @height = value
  end
end

rectangle = Rectangle.new
rectangle.height = 100
rectangle.width = 250
puts rectangle.calc_resolution

square = Square.new
square.width = 50
puts square.calc_resolution