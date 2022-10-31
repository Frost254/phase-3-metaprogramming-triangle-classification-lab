class Triangle
  # write code here
  attr_accessor :length, :width, :hypotenuse

  def initialize (length, width, hypotenuse) 
    @length = length
    @width = width
    @hypotenuse = hypotenuse
  end

  def kind 
    validate_triangle
      if (length == width && width == hypotenuse)
          :equilateral
        elsif (length == width || length == hypotenuse || hypotenuse == width)
          :isosceles
        else
          :scalene
      end
  end 

  def validate_triangle
    real_triangle = [(length + width > hypotenuse), (length + hypotenuse > width), (width + hypotenuse > length)]
    [length, width, hypotenuse].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError

  end
   
end
