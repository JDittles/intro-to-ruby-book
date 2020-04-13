#Playing with mutating the caller in a method

a = [1, 2, 3]

# a method definition that modifies its argument permanently (aka outside of the method's scope)
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}" # <= p is a method that outputs what is returned
mutate (a)
p "After mutate method: #{a}"