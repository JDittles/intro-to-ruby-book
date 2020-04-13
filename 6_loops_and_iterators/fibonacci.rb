def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

#from the orignal example in the book:
#puts fibonacci(6)

#provides for user_input:
puts 'enter a number to see its fibonacci representation'
user_input = gets.chomp.to_i
puts fibonacci(user_input)