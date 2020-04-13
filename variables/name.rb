#This is a book exercise that gets first and last name, greets the person then prints the name ten times

puts 'What\'s your first name, partner? '
first_name = gets.chomp
puts '...and your last name?'
last_name = gets.chomp
puts 'Hey ' + first_name + ' ' + last_name
10.times do
  puts first_name + ' ' + last_name
end