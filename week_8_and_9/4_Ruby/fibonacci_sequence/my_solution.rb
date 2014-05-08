# U3.W8-9: 


# I worked on this challenge with Ahmed Al-Bahar.

# 2. Pseudocode
=begin
I'm going to build a loop that calculates the next number in the fibonacci sequence until the number entered in #is_fibonacci? is less than the current fibonacci number I've calculated.

DEFINE method called is_fibonacci? that takes num as an argument
	SET variable x equal to 0, the first number of fibonacci
	SET variable y equal to 1, the second number of fibonacci
	WHILE x is less than or equal to num
		IF num is equal to x, return true
		ELSE IF num is less than x, return false
		ELSE SET x equal to x plus y
			SET y equal to x
	END WHILE
END method

=end

# 0, 1, 1, 2, 3, 5, 8, 13, 
def fib(n)
  return n if (0..1).include? n
  fib(n-1) + fib(n-2) if n > 1
end

# 3. Initial Solution

def is_fibonacci?(num)
	x = 0
	y = 1
	z = 1	
	fib = [0,1,1]

	while num >= z
		z = y + z # 2 : 3 : 5
		y = z - y # 1 : 2 : 3
		x = z - y # 1 : 1 : 2
		fib.push(z)

		if fib.include? num 
			return true
		elsif num < z
			return false
		end
	end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 