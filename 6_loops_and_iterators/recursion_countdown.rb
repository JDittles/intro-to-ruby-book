def countdown(number)
  if number > 0
    puts number
    countdown(number-1)
  else
    puts "0"
  end
end

puts "enter a number and I'll countdown to zero from it."
user_input = gets.chomp.to_i
countdown(user_input)