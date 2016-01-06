// BINARY SEARCH GAME
// by Rubynettes v0.0.2

angular.module("theBinarySearchGame", [])
.controller('mainCtrl', function($scope){
    
// Initialization
$scope.highest = 101;
$scope.lowest = 1;
$scope.middle = 0;
$scope.question = 0;
$scope.step = 0;

// Report the Range
$scope.reportRange = function(lowest,highest){  
	document.getElementById("range").innerHTML = "The Range is between " + lowest + " and " + highest + ".\n";
}

// Calculate Middle value between lowest and highest number
$scope.calculateMiddle  = function(lowest,highest){
    middle = highest - lowest;
    console.log(middle);   
    document.getElementById("middle").innerHTML = "The middle value is " + highest + " - " + lowest + " = " + middle;
    return middle;
}

$scope.askQuestion = function(middle,lowest){
    question = Math.ceil(middle / 2 + lowest);
    document.getElementById("guess").innerHTML =
        "<p>So " + middle + "/2" + " = " + Math.ceil(middle/2) + " added to " + lowest + "...</p>"
        + "<p> Can it be " + question + "?</p>";
        return question;
}


//	Loop through calculation and user input
//	until win state is reached

$scope.binarySearch = function(lowest,middle,highest,question,step,usernumber){    
    
    step = step + 1;
    document.getElementById("step").innerHTML = "Step " + step;
    
	$scope.reportRange(lowest,highest);
	middle = $scope.calculateMiddle(lowest,highest);
	question = $scope.askQuestion(middle,lowest);
    console.log("lowest: " + lowest,"middle: " + middle, "highest: " + highest,"question: " + question,"step: " + step,"usernumber: " + usernumber);


    return lowest,middle,highest,question,step,usernumber;
}


$scope.goDown = function(lowest,middle,highest,question,step,usernumber){
    console.log("lowest: " + lowest,"middle: " + middle, "highest: " + highest,"question: " + question,"step: " + step,"usernumber: " + usernumber);
    highest = question;
    $scope.binarySearch(lowest,middle,highest,question,step,usernumber);
}

$scope.goUp = function(lowest,middle,highest,question,step,usernumber){
    console.log("lowest: " + lowest,"middle: " + middle, "highest: " + highest,"question: " + question,"step: " + step,"usernumber: " + usernumber);
    lowest = question;
    $scope.binarySearch(lowest,middle,highest,question,step,usernumber);

    }
});



/* while ($question != 66){
	switch (answer) {
	case "less":
		$highest = $question;
	case "more":
		$lowest = $question;
	}		
}*/