## BINARY SEARCH GAME
# by Rubynettes v0.1

# Initialization
hi = 0
lo = 101
mid = 0
q = 0
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


# Explain 
def explain_step(lo,hi)
	puts "Now picking a number between #{lo} and #{hi}."
end

explain_step(0,101)

def calculating_mid(lo,hi)
	mid = lo + (hi-lo) / 2
	puts "Is it #{mid}?"
	return mid
end

calculating_mid(lo,hi)
explain_step(0,mid)

