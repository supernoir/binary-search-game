## BINARY SEARCH GAME
# by Rubynettes v0.1

# Initialization
hi = 101
lo = 0
mid = 0
current = 0
step = 0


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
puts "I cheated. It's #{usernumber}"


def less_more_equal
	puts "Is it less, more or equal?"
	response = gets.chomp.to_s
	if response == "="
		puts "bingo"
	elsif response == "<"
		puts "less!"
	else
		puts "more!"
	end
end

less_more_equal


# Reporting current range to user
def reporting_current_range(lowest,highest)
	puts "Now picking a number between #{lowest} and #{highest}."
end

reporting_current_range(lo,hi)


# Calculating current middle value
def calculating_mid(lowest,highest)
	mid = highest - lowest
	puts "The middle value is #{mid}."
	return mid
end


mid = calculating_mid(lo,hi)

def higher_than_current(middle,lowest)
	current = (middle / 2) + lowest
	return current
end

def lower_than_current(middle,highest)
	current = (middle / 2) - highest
	return current
end

def track_response(current)
	puts "Is it #{current}, higher or lower?"
end


# A big bad while loop

while current != usernumber do
	step = step + 1
	puts " "
	puts "Step (#{step})"
	puts " "
	current = higher_than_current(mid,lo)
#	current = lower_than_current(mid,hi)
	track_response(current)
	lo = current
	reporting_current_range(lo,hi)
	mid = calculating_mid(lo,hi)	
end

