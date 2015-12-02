## BINARY SEARCH GAME
## by Rubynettes - v0.1

## Asking for user name, prompting user to enter a number between 1 and 100
 
  puts "- " * 40
  puts "BINARY SEARCH GAME"
  print "Player Name: "
  $user = gets.chomp.to_s
  puts "Welcome, #{$user}"
  puts " "
  puts "- " * 40
  puts "\nPlease enter a number between 0 an 100:\n"

## Method to utilize the user number, generate computer number

def guessing
  print "=> "
  usr_number = gets.chomp.to_i
  puts " "
  com_number = rand(10)
  puts ". " * 40
  puts "#{$user} selected: #{usr_number}\n"
  puts "Computer selected: #{com_number}\n"
  puts ". " * 40

  while true
    if com_number != usr_number
      puts "\n-- Your numbers do not match..."
      puts "\nTry another number:"
      return true
    else com_number == usr_number
      puts "\n-- You both chose the same numbers..."
      puts "Congratulations!"
      return false
    end
  end
end

current = 0
total = 10

while current <= total-1 do
  current += 1
  puts "This is Guess No. #{current} out of #{total}.\n"
  puts "| X | " * current
  guessing
end
