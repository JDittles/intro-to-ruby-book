i = 0
loop do
  i += 2
  if i == 4
    next # <<- this skips the rest of the code in the iteration
  end
  puts i
  if i == 10
    break
  end
end