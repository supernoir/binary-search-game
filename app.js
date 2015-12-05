// BINARY SEARCH GAME
// by Rubynettes v0.1

// Initialization
var $highest = 101
var $lowest = 0
var $middle = 0
var $question = 0
var $step = 0


// Prompt User for Number
var $usernumber = document.getElementById("number").value;
document.write($usernumber);

// Report current range
function reportRange(lowest,highest){
	document.write("The Range is between " + $lowest + " and " + $highest + ".\n");
}

reportRange($lowest,$highest);

// Calculate middle of range
function calculateMiddle(lowest, highest){
	$middle = $highest - $lowest;
	document.write($highest + " - " + $lowest + " = " + $middle);
	return $middle;
}

calculateMiddle($lowest,$highest);

// Propose calculated number

function askQuestion(middle,lowest){
	var $question = Math.ceil(($middle/2) + $lowest);
	document.write("<p>So " + $middle + "/2" + " = " + Math.ceil($middle/2) + " added to " + $lowest + "...</p>");
	document.write("Can it be " + $question + "?");
	return $question;
}

askQuestion($middle,$lowest);


//	Loop through calculation and user input
//	until win state is reached

/*while ($question != 66){
	$step = $step + 1;
	document.write("<p>Step (" + $step + ")</p>");
	
	reportRange($lowest,$highest);
	$middle = calculateMiddle($lowest,$highest);
	$question = askQuestion($middle,$lowest);

	document.write("Is it less or more?");
	/*answer = prompt;
	
	switch (answer) {
	case "less":
		$highest = $question;
	case "more":
		$lowest = $question;
	}		
}*/