puts "Compy says,'Enter a number for me to countdown.'"
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"