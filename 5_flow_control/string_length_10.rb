def check_length(string)
  if string.length > 10
    puts string.upcase
  else
    puts string.downcase
  end
end

puts "What's going on fam?"
query = gets.chomp
check_length(query)