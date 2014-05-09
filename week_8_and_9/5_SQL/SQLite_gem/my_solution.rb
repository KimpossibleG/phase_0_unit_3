# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself.

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}").each{|row| puts row.join(' - ') + " years"}
end

def print_lowest_grade_level_speakers(grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  reps = $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade}")
  reps.each {|rep| puts rep }
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_speaker_by_location(*states)
	puts "STATE REPRESENTATIVES IN " + states.join(", ")
	states.each { |state|
		puts $db.execute("SELECT name FROM congress_members WHERE location LIKE ?", "#{state}")
	}
end

print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator

print_speaker_by_location('NJ', 'NY', 'ME', 'FL', 'AK')
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
def politician_votes
	puts "NUMBER OF VOTES BY POLITICIAN"
	 $db.execute("SELECT name, COUNT(*) 
	 	FROM congress_members JOIN votes ON congress_members.id = politician_id 
	 	GROUP BY politician_id").each{|row| puts row.join(' - ') + " votes"}
end

def voter_choice
	puts "WHICH VOTERS VOTED FOR WHICH CANDIDATES"
	# make an array with the names of the senators:
	senators = $db.execute("SELECT name, id FROM congress_members")
	# for each senator, puts a string that includes the senator's name and a list of people who voted for him
	senators.each { |senator|
		# start with the "intro line" for the senator:
		string = senator[0] + ": \n"
		# make an array with the names of the voters.  
		# Elements in the array alternate between first name and last name.
		add = $db.execute("SELECT first_name, last_name 
			FROM voters 
				JOIN votes 
					ON voter_id = voters.id
				JOIN congress_members
					ON politician_id = congress_members.id
			WHERE politician_id LIKE ?", "#{senator[1]}").join(" ").split(" ")
		# Add a comma to the end of every other element in the array--ie add a comma after every last name
		index = 1
		while index < add.length
			add[index] += ","
			index += 2
		end
		# turn the array of names into a string and add that string to the "intro line" we already created
		string += add.join(" ")
		puts string
		puts
	}
end

# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.



# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
print_separator
politician_votes



# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
print_separator
voter_choice

# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# => $db opens the database and allows Ruby to access the stuff inside -- the tables and 
# => data.  Everytime we call $db, we are telling Ruby that we want to use/manipulate 
# => information in that file.

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students. 
# => 1. Open the database stored in $db
# => 2. Execute a query
# => 3. Find congress_members table
# => 4. search column years_in_congress for any rows with corresponding value > minimum years
# => 5. Return the name attribute of any row that is found. 


# I enjoyed manipulating an actual database using SQLite3.  I got off to a slow
# start but it picked up quickly.  It took me a while to figure out how to make
# the #each loop work in print_speaker_by_location.  I could have just hard coded
# the given states in pretty easily, but that seems a lot less useful.  

# I also spent a lot of time on the last bonus challenge, getting a list of all the 
# voters who voted for a certain candidate.  After the previous exercises, it didn't
# take me that long to print out just the first names (or just the last names) in the list,
# but it took me a while to figure out how to put first_name + last_name + ,.  I'm not 
# sure I did this in the best possible way (my code could probably use a refactor), but
# for now I'm just happy to have gotten it working.