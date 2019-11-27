class Triangle
  # write code here
  attr_accessor :side_one,:side_two,:side_three

  def initialize(side_one,side_two,side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    
    if @side_one == 0 || @side_two == 0 || @side_three == 0
      # begin
        raise TriangleError
      # rescue TriangleError => error 
      #   puts error.zero
      # end
    elsif @side_one < 0 || @side_two < 0 || @side_three < 0
      raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_one + @side_three <=
      @side_two || @side_two + @side_three <= @side_one
      raise TriangleError
    else
      if @side_one == @side_two && @side_one == @side_three
        :equilateral 
      elsif @side_two == @side_three || @side_one == @side_three || @side_one == 
        @side_two
        :isosceles
      elsif @side_one != @side_three && @side_three != @side_two
        :scalene
      end

    end
  end


  class TriangleError < StandardError
    # def zero
    #   "must have sides larger than zero"
    # end
  end

end
