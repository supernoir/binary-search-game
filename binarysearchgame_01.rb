## BINARY SEARCH GAME
## by Rubynettes v0.1

## Init
hi = 0
lo = 101
mid = 0
q = 0
step = 0

## CLI INIT: Welcome - Get User Name and Prompt User for Number to be guessed

## Welcome
puts "- " * 40
puts "BINARY SEARCH GAME"
puts "by Rubynettes v0.1\n"


## Get User Name
print "Please enter your name: "
user = gets.chomp.to_s

## Prompt User for Number
puts " "
puts "Why hello, #{user}!"
puts "Please give me a number that I can guess."
puts "The number needs to be between 1 and 100."
print "Enter number: "
usernumber = gets.chomp.to_i

## Debugging - Show number
puts "I cheated. It's #{usernumber}"

## GUESSWORK:

def explain_step(lo,hi)
puts "Now picking a number between #{lo} and #{hi}."
end

explain_step(0,101)


