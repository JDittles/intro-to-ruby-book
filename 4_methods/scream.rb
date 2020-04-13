def scream(words)
  words = words + "!!!!"
  puts words
  words
end

puts 'What would you like to shout into the void?'
user_input = gets.chomp
scream(user_input)