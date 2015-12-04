## BINARY SEARCH GAME
# by Rubynettes v0.1

# Initialization
highest = 101
lowest = 0
middle = 0
question = 0
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


# Reporting range
def report_range(lowest,highest)
	puts "The Range is between #{lowest} and #{highest}."
end

# Calculating middle
def calculate_middle(lowest,highest)
	middle = highest - lowest
	puts "#{highest} - #{lowest} = #{middle}"
	return middle
end

# Asking Question with an informed guess
def ask_question(middle,lowest)
	question = (middle / 2) + lowest
	puts "So #{middle}/2 = #{middle/2} added to #{lowest}..."
	puts "Can it be #{question}?"	
	return question
end



# Where the magic happens

while question != usernumber do
	step = step + 1
	puts "\nStep (#{step})\n\n"
	
	report_range(lowest,highest)
	middle = calculate_middle(lowest,highest)
	question = ask_question(middle,lowest)

	puts "Is it less or more?"
	answer = gets.chomp.to_s
	
	case answer
	when "less"
		highest = question
	when "more"
		lowest = question
	end		
end
	

