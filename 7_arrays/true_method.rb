numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers.select { |number| number > 4 } #prints each value greater than 4 in the numbers array...
puts numbers                                #but doesn't modify the array itself aka is non-destructive