class Triangle
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def zero_side
    @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
  end

  def long_side
    (@side_1 + @side_2) <= @side_3 || (@side_1 + @side_3) <= @side_2 || (@side_3 + @side_2) <= @side_1
  end

  def kind
    if self.zero_side || self.long_side
      raise TriangleError
    elsif @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
