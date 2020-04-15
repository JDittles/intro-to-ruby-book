# **Arrays**
## *What is an Array?*
  - an ordered list
  - define an array by placing a list of elements between brackets `[]`
  - `.first` and `.last` are array methods that return the first and last elements respectively
  - we can also access elements in an array by their *index*
    - indices start at `0` in computing, so the their element of an array would be at `array[2]`
  - *Modifying Arrays*
    - `.pop` is a method that mutates the caller--meaning it changes the array we call it on. It removes the last element from an array (and returns it)
    - `.push()` is a method that also mutates the caller, it's used to add elements to the end of an array
      - the shovel operator `<<` is another way to do this same task
    - `.map` method iterates over an array applying a block of code to each element of the array and returns a new array with the results
      - `.collect` is an alias of `.map`
      - `.map` and `.collect` are non-destructive (aka they don't mutate the caller) so the original array is un-touched
    - `.delete_at()` is a method that can be helpful to eliminate the value at a certain index of an array. It *is* destructive and *mutates the caller*. (it returns the value it deletes)
    - `.delete()` is a method that deletes a value that you define from the array. Useful if you know the element you want to delete but not the index.
    - `.uniq` iterates through an array, deletes any duplicate values that exist then returns the result as a new array
      - if you add a bang (`!`) to this method you can perform the `uniq` function destructively
  - *Iterating Over an Array*
    - `select` method
      - iterates over an array and returns and elements that return `true` to the expression provided.
      - [true_method.rb](true_method.rb) shows this method in action
  - *Methods With a !*
    - A bang at the end of a method name usually indicates that the method will change (or mutate) the caller permanently aka is destructive
    - This is not always the case
    - methods with a bang should be looked at warily and [Ruby documentation](https://www.ruby-lang.org/en/documentation/) should be checked
    - there are methods without a bang that are destructive like `.pop` and `.push`
  - *Mutating the Caller: The Sequel*
    ```Ruby
    def mutate(arr)
      arr.pop
    end
    
    def not_mutate(arr)
      arr.select { |i| i > 3 }
    end

    a = [1, 2, 3, 4, 5, 6]
    mutate(a)
    not_mutate(a)

    puts a
    ```
    - The above example shows how `.pop` mutates the caller and how a method like `.select` does not.
    - Last line will output `1`, `2`, `3`, `4`, `5`, because the `6` was `.pop`'ed from the array.
    - it will have elements <3 because `.select` was non-destructive
  - *Nested Arrays*
    - Arrays can contain arrays inside of them
    - Arrays can also contain hashes
  - *Comparing Arrays*
    - we can check equality with `==`
    - `unshift` method is like the opposite of `.pop`. It adds the argument to the front of the list
  - *to_s*
    - is used to create a string representation of an array
    - Ruby does this behind the scenes when we use string interpolation to print an array
  - *Common Array Methods*
    - some common methods for the [array class](https://ruby-doc.org/core-2.7.1/Array.html)
    - `include?` checks to see if the argument given is included in the array. The `?` usually means a boolean value will be returned
    - `flatten` is used to take an array that contains nested arrays and create a one-dimensional array
      - non-destructive, can be made destructive with a `!`
    - `each_index` iterates through an array like `each` but passes the index number to the code block instead of the element. It returns the original array
    - `each_with_index` gives the ability to manipulate the value and index by passing in two parameters to the block of code
    ```Ruby
    a = [1, 2, 3, 4, 5]
    a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
    ```
      - the above example will return a numbered list with the values. *CONVENIENT!*
    - `sort` returns a new array ordered from least to most
    - `product` combines to arrays in an interesting way
  - *each vs map*
    - `each` is a simple way to iterate over a collection in Ruby and is more preferred to using the `for` loop
      - works on objects that allow for iteration
      - commonly used along witha  block
      - if given a block, `each` runs the code int he block once for each element in the collection and returns the collection it was invoked on
      - if no block is given it returns an [enumerator](https://ruby-doc.org/core-2.6.1/Enumerator.html)
    - `map` also works on objects that allow for iteration.
      - when given a block it invokes the given block once for each elements
      - `map` creates and returns a new array containing the values returned by the block
      - if no block is given... an enumerator is returned
    - `each` and `map` are important methods to know
    - `each` for iteration `map` for transformation
## - *Summary*
  - *Exercises*
    - [look_for_three.rb](look_for_three.rb) iterates over an array and prints a senetence to the console if the  number three exists in the array
      - could also be done with `.include?`
    - [each_with_index_example.rb](each_with_index_example.rb)
    - [iterate_plus_two.rb](iterate_plus_two.rb)