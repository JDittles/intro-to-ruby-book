def check_range(number)
  if number >= 0 && number <= 50
    puts "A number between 0 and 50! " + number.to_s + " was a great choice."
  elsif number > 50 && number <= 100
    puts " A number between 50 and 100! " + number.to_s + " was a great choice."
  else
    puts "It seems " + number.to_s + " is greater than 100. Do better."
  end
end

puts "Give me a number from 0 to 100. But please not above 100!"
user_input = gets.chomp.to_i
check_range(user_input)