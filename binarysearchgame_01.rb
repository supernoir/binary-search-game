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

# Get User Name
print "Please enter your name: "
user = gets.chomp.to_s

# Prompt User for Number
puts " "
puts "Why hello, #{user}!"
puts "Please give me a number that I can guess."
puts "The number needs to be between 1 and 100."
print "Enter number: "
usernumber = gets.chomp.to_i


# Debugging - Show number
puts "I cheated. It's #{usernumber}"


## GUESSWORK:


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

def calculating_current(middle,lowest)
	current = (middle / 2) + lowest
	return current
end

def track_response(current)
	puts "Is it #{current}, higher or lower?"
end


for i in 0..7

	puts " "
	puts "Step (#{i})"
	puts " "
	current = calculating_current(mid,lo)
	track_response(current)
	lo = current
	reporting_current_range(lo,hi)
	mid = calculating_mid(lo,hi)
	
	if current == usernumber then
		puts "...and #{current} equals your #{usernumber}!"
      break
   end
end