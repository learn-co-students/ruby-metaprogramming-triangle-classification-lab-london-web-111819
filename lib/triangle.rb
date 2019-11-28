class Triangle
  attr_accessor :length1, :length2, :length3

  @@all = []

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @@all << self
  end

  def self.all
    @@all
  end

  def kind
    if self.length1 == self.length2 && self.length2 == self.length3
      return :equilateral
    elsif self.length1 == self.length2 && self.length2 != self.length3 || self.length1 != self.length2 && self.length2 == self.length3 || self.length1 == self.length3 && self.length3 != self.length2
      return :isosceles
    elsif self.length1 != self.length2 && self.length2 != self.length3 && self.length3 != self.length1
      return :scalene
    end
  end

  class TriangleError < StandardError
    Triangle.all.select{|triangle| 
    if triangle.length1 <= 0 || triangle.length2 <= 0 || triangle.length3 <= 0
      error
    end
    if triangle.length1 + triangle.length2 < triangle.length3 || triangle.length2 + triangle.length3 < triangle.length1 || triangle.length3 + triangle.length1 < triangle.length2
      error
    end}
  end



end
