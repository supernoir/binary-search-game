// BINARY SEARCH GAME
// by Rubynettes v0.1

// Initialization
var $highest = 101
var $lowest = 0
var $middle = 0
var $question = 0
var $step = 0


// Prompt User for Number
var $usernumber = document.getElementById("number");
document.write($usernumber);

// Report current range
function reportRange(lowest,highest){
	document.write("The Range is between " + $lowest + " and " + $highest + ".\n");
}

reportRange($lowest,$highest)

// Calculate middle of range
function calculateMiddle(lowest, highest){
	middle = highest - lowest;
	document.write(highest + " - " + lowest + " = " + middle);
	return middle
}
calculateMiddle($lowest,$highest)
/*
# Propose calculated number
def ask_question(middle,lowest)
	question = (middle / 2) + lowest
	puts "So #{middle}/2 = #{middle/2} added to #{lowest}..."
	puts "Can it be #{question}?"	
	return question
end


#	Loop through calculation and user input
#	until win state is reached

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

function getUserNumber(userNumber){
	var $user_number = 0;
	prompt($user_number);
	document.write($user_number);
}
*/