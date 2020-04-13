#Book exercise that I created a loop to do. Saw syntax for a for loop earlier and wanted to try it out.

puts 'How old are you partner?'
age = gets.chomp.to_i
years_add = 10
arr = [1, 2, 3, 4]
for i in arr do
  puts 'In ' + years_add.to_s + ' years you will be:' 
  puts age + years_add
  years_add = years_add + 10
end