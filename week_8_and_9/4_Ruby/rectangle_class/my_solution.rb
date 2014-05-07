# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge with Travis Hernandez.

# 2. Pseudocode
=begin
DEFINE a method called area that takes no arguments
    Return area equal to height times width
END method area

DEFINE a method called perimeter that takes no arguments
    Return perimeter equal to height plus height plus width plus width
END method perimeter

DEFINE a method called diagonal that takes no arguments
    Return square root of width-squared plus height-squared as a float
END method diagonal

DEFINE a method called square? 
    IF height is equal to width
        RETURN true
    ELSE
        RETURN false
    End If statement
END method square?
=end


# 3. Initial Solution
class Rectangle
    attr_accessor :width, :height
    
    def initialize(width, height)
        @width  = width
        @height = height
    end
    
    def ==(other)
        (other.width  == self.width && other.height == self.height ) ||
        (other.height == self.width && other.width  == self.height )
    end
  
    def area
        return @height * @width
    end
    
    def perimeter
        return @height + @height + @width + @width
    end

    def diagonal
        return Math.sqrt(@height**2 + @width**2).to_f
    end
    
    def square?
        @height == @width ? true: false
    end 
  
end

def assert
    raise "AssertionError!" until yield
end 




# 4. Refactored Solution

# This looks pretty solid to me!




# 1. DRIVER TESTS GO BELOW THIS LINE


assert {(Rectangle.new(5,4 ).area == 20 )== true}
assert {(Rectangle.new(5,4 ).perimeter == 18 )== true}
assert {(Rectangle.new(3,4 ).diagonal == 5.0 )== true}

assert {(Rectangle.new(5,4).square? == false)}
assert {(Rectangle.new(4,4).square? == true)}





# 5. Reflection 
=begin
Feeling really good about the concepts in this challenge. My pair (Travis) and I didn't have to look much up, aside from the syntax of the math.sqrt method, and I'm okay with not having that memorized and knowing how to look it up and implement it quickly.

Travis walked me through creating the instance of the Rectange class within the assert statement, which was super helpful, saved me two steps, and helped me understand why assert statements can be more efficient than the puts statements we were originally using for driver code. As well, he introduced me to ternary statements like @height == @width ? true: false , which I love and will be researching and using further.
	
=end