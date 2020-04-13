x = 0

while x <= 10 #<<-- obviously this is useless with the break below, but examples are examples
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end