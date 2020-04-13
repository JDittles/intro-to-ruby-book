def add_three(number)
  number + 3 # <== we don't need to put return here, Ruby always returns on the last line of a method
end

returned_value = add_three(4)
puts returned_value 