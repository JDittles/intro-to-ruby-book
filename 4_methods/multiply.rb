def multiply(num1, num2)
  result = num1 * num2
  puts 'the result is ' + result.to_s
  result
end

puts 'enter the first number'
number1 = gets.chomp.to_i
puts '...and the second number'
number2 = gets.chomp.to_i
multiply(number1, number2)