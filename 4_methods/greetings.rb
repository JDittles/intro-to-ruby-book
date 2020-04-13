def greeting(name)
  response = 'hello ' + name + ' how are you today?'
  puts response
  response
end

puts 'Please enter your name'
user_name = gets.chomp
greeting(user_name)