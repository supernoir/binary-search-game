// BINARY SEARCH GAME
// by Rubynettes v0.1

angular.module("theBinarySearchGame", [])
.controller('mainCtrl', function($scope){
    
// Initialization
$scope.highest = 101;
$scope.lowest = 0;
$scope.middle = 0;
$scope.question = 0;
$scope.step = 0;
//$scope.usernumber = 1;

// Report the Range
$scope.reportRange = function(lowest,highest){  
	document.getElementById("range").innerHTML = "The Range is between " + lowest + " and " + highest + ".\n";
}

// Calculate Middle value between lowest and highest number
$scope.calculateMiddle  = function(lowest,highest){
    middle = highest - lowest;
    document.getElementById("middle").innerHTML = "The middle value is " + highest + " - " + lowest + " = " + middle;
    return $scope.middle;
}

$scope.askQuestion = function(middle,lowest){
    question = Math.ceil(middle/2 + lowest);
    document.getElementById("guess").innerHTML =
        "<p>So " + middle + "/2" + " = " + Math.ceil(middle/2) + " added to " + lowest + "...</p>"
        + "<p> Can it be " + question + "?</p>";
        return $scope.question;
}


//	Loop through calculation and user input
//	until win state is reached

$scope.binarySearch = function(lowest,middle,highest,question,step,usernumber){    
    
//  while (question != usernumber){
    step = step + 1;
    document.getElementById("step").innerHTML = "Step " + step;
    
	$scope.reportRange(lowest,highest);
	middle = $scope.calculateMiddle(lowest,highest);
	question = $scope.askQuestion(middle,lowest);
    
//  }


    return $scope.lowest,$scope.middle,$scope.highest,$scope.question,$scope.step,$scope.usernumber;
}


$scope.goUp = function(){
    document.getElementById("counter").innerHTML = "Up";
}

$scope.goDown = function(){
    document.getElementById("counter").innerHTML = "Down";
}

});



/* while ($question != 66){

	document.write("Is it less or more?");}
	/*answer = prompt;
	
	switch (answer) {
	case "less":
		$highest = $question;
	case "more":
		$lowest = $question;
	}		
}*/