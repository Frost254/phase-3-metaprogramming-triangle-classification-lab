class Triangle
  # write code here
  attr_accessor :length, :width, :hypotenuse

  def initialize (length, width, hypotenuse) 
    @length = length
    @width = width
    @hypotenuse = hypotenuse
  end

  def kind 
    true_triangle
      if (length == width && width == hypotenuse)
          :equilateral
        elsif (length == width || length == hypotenuse || hypotenuse == width)
          :isosceles
        else
          :scalene
      end
  end 

  def true_triangle
    actual_triangle = [(length + width > hypotenuse), (length + hypotenuse > width), (width + hypotenuse > length)]
    sides = [length, width, hypotenuse]
    sides.each do |side|
      actual_triangle << false if side <= 0 
    raise TriangleError if actual_triangle.include?(false)
    end
  end

  class TriangleError < StandardError

  end
   
end
