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

def is_fibonacci?(num)
	y = 1
	z = 1	
	fib = [0,1,1]

	while num >= z || num <= 0
		z = y + z # 2 : 3 : 5
		y = z - y # 1 : 2 : 3
		fib.push(z)

		if fib.include? num 
			return true
		elsif num < z
			return false
		end
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p is_fibonacci?(8) == true
p is_fibonacci?(11111) == false
p is_fibonacci?(8670007398507948658051921) == true
p is_fibonacci?(88867062550) == false
p is_fibonacci?(10946) == true
p is_fibonacci?(0) == true
p is_fibonacci?(-923478347) == false




# 5. Reflection 
=begin
	
This challenge took me a lonnnnnnn time because of a n00b mistake... I was working with a my_solution file outside of the directory where my rspec file was, so everytime I ran the rspec, it failed the tests again and again and again. I spent forever trying to figure out what was wrong with my code! Reality? Nothing was wrong with it; I just had to move the file I was working in. :-)

I paired with Ahmed on this challenge, and because of some circumstances that came up with my kids, we weren't able to chat on a google hangout as much as I would like, and instead ended up collaborating by email. It was still INCREDIBLY useful. We went back and forth improving on each other's code/pseudocode, asking and answering questions, etc. Great exercise.

Feeling like I have a pretty good handle on this one!
	
=end




