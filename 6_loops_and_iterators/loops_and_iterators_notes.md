# **Loops & Iterators**
## - Loop
  - is a repetitive execution of a piece of code for a given amount of repititions or until a certain condition is met.
  - `while`, `do/while` and `for` loops are different kinds
  - *A Simple Loop*
    - `loop` method
      - takes a block, which is denoted by `{ ... }` or `do ... end`.
      - a `loop` will execute any code within the block until you manually intervene with `Ctrl + c` or insert a `break` statement inside the block
      - [loop_example.rb](loop_example.rb)
  - *Controlling Loop Execution
    - [useful_loop.rb](useful_loop.rb)
    - endless loops crash systems, so we always put controls in place
    - `break` keyword stops execution, so we put it in a conditional statement and *voila* our program has stopping conditions
    - `next` keyword skips over rest of the code in this iteration
  - *While Loops*
    - While loops have a parameter that evaluates to a boolean. Once that boolean expression becomes `false` the while loop execution is stopped
    - Code inside the loop can be any kind of logic
    - [countdown.rb](countdown.rb) counts down from a user-entered number. Essentially counting down till the number is 0 and then halting the loop because the boolean equates to `false`
  - *Until Loops*
    - the opposite of a while loop
    - it's mostly just a difference in phrasing
    - until loops execute until the value becomes `true`
  - *Do/While Loops*
    - the conditional check is at the end of the loop so code will execute and then check conditional (while and until loops check before executing)
    - [perform_again.rb](perform_again.rb) does actions until the user enters 'y'.
    - another construct in Ruby that supports "do/while" loops looks like this:
    ```ruby
    begin
      puts "Do you  want to do that again?"
      answer =  gets.chomp.upcase
    end while answer == 'Y'
    ```
    - it works but is not recommended by Matz, Ruby's creator
  - *For Loops*
    - used to loop over a collectin of elements
    - unlike a while loop, for loops have an inherent end because we're looping over a finite number of elements.
    - `for` starts it, then a variable, then `in` and then a collection of elements. Here's an example! [countdown3.rb](countdown3.rb)
      - `1..x` indicates a range from `1` to `x`
    - For loops return the collection of elements after it executes, wheras the earlier while loop examples return `nil`
    - another example! [countdown4.rb](countdown4.rb)
  - *Conditionals within Loops*
    - to make loops even more effective we add conditional flow control to alter their behavior
    - `if` statement in a `while` loop example [conditional_while_loop.rb](conditional_while_loop.rb)
    - as always `next` and `break` are usful here. Did you want an example of that too? [conditional_while_loop_with_next.rb](conditional_while_loop_with_next.rb)
      - are the file names specific enough?
  - *Iterators*
    - are methods that naturally loop over a given set of data and allow you to operate on each element in the collection
    - here's an example of iterating over an array and print each name using `.each` method of `arrays`. [practice_each.rb](practice_each.rb)
      - `each` called by a dot operator on our  array
      - `each` method loops through each element in our array, in order
      - starting and ending points are defined by curly brackets `{}`
      - each time we iterate over the array we need to assign the value of the element to a variable. In this exammple we name the variable `name` and place it in between two pipes `|name|`
    - when everything in the `block` fits on one line we use curly brackets (`{}`)
    - when the `block` is multi-line we use `do` and `end`
      - we modify our [practice_each.rb](practice_each.rb) into a multi-line block with `do/each` to exhibit this
    - *expressive languages have mutliple ways to do things, we must memorize these and understand their best uses as programmers*
  - *Recursion*
    - act of calling a method from within itself
    - another way to create a loop in Ruby
    ```ruby
    def doubler(start)
     puts start
      if start < 10
        doubler(start * 2)
      end
    end
    ```
    - the above calls `doubler ` method again, passing it the doubled version of the value stored in the `start` variable
    - lets use this to calculate a fibonacci sequence [fibonacci.rb](fibonacci.rb)
## - Summary
  - *Exercises*
    - [loop_till_stop.rb](loop_till_stop.rb) is a *while* loop that continues until the user type "STOP"
    - [recursion_countdown.rb](recursion_countdown.rb) is a *recursion* loop that continues until the user input number is 0, printing the number each time as it goes!
      - my example is slightly different from their example, but uses recursion and works.