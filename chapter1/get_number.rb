# Get My Number Game
# Written by: you!
puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets.chop
puts "Welcome, #{input}!"

puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
amount_quesses = 10
num_guesses = 0
guess = 0;

until guess == target || num_guesses == amount_quesses
  num_guesses += 1;
  print "Make a guess: "
  guess = gets.to_i
  if guess < target
    puts "Oops. Your guess was LOW"
  elsif guess > target
    puts "Oops. Your guess was HIGH"
  end
  puts "You've got #{amount_quesses - num_guesses} guesses left."
end

if num_guesses < amount_quesses
  puts "Good job, #{input}! You guessed my number in #{num_guesses} guesses!"
elsif
  puts "Sorry, You didn't get my number. My number was #{target}"
end
