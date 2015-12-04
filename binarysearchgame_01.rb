## BINARY SEARCH GAME
# by Rubynettes v0.1

# Initialization
hi = 101
lo = 0
mid = 0
current = 0
step = 0
less = false
more = false
equal = false


# Welcome
puts "- " * 40
puts "BINARY SEARCH GAME"
puts "by Rubynettes v0.1\n"

# Prompt User for Number
puts " "
puts "Please give me a number that I can guess."
puts "The number needs to be between 1 and 100."
print "Enter number: "
usernumber = gets.chomp.to_i

# Debugging - Show number
# puts "I cheated. It's #{usernumber}"


def less_more_equal
	puts "Is it less, more or equal?"
	response = gets.chomp.to_s
	if response == "less"
		return true
	elsif response == "more"
		return false
	else
		return nil
	end
end



# Reporting current range to user
def reporting_current_range(lowest,highest)
	puts "Now picking a number between #{lowest} and #{highest}."
end


# Calculating current middle value
def calculating_mid(lowest,highest)
	mid = highest - lowest
	puts "The middle value is #{mid}."
	return mid
end


def higher_than_current(middle,lowest)
	current = (middle / 2) + lowest
	return current
end

def lower_than_current(middle,highest)
	current = (middle / 2) - highest
	return current
end

def track_response(current)
	puts "I am currently at #{current}."
end




# A big bad while loop

while current != usernumber do
	step = step + 1
	puts " "
	puts "Step (#{step})"
	puts " "
	
		reporting_current_range(lo,hi)
		mid = calculating_mid(lo,hi)
	
	if less == false
		current = higher_than_current(mid,lo)
		track_response(current)
		less_more_equal
		hi = current

		
	elsif less == true
		current = lower_than_current(mid,hi)
		track_response(current)
		less_more_equal
		lo = current

		
	else
		puts "BINGO!"
	end
end

