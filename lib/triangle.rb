require 'pry'
class Triangle
  def initialize(side1, side2, side3)
    @side_array = []
    @side_array << side1
    @side_array << side2
    @side_array << side3
    @side_array.sort!
  end

  def kind
    raise TriangleError if @side_array[0] <= 0 || @side_array[0] + @side_array[1] <= @side_array[2]
    return :equilateral if @side_array[0] == @side_array[2]
    return :isosceles if @side_array[0] == @side_array[1] || @side_array[1] == @side_array[2]
    return :scalene
  end
end

class TriangleError < StandardError

end