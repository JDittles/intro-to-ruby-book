# **METHODS**
## - *What are Methods?*
  - a procedure that has to be executed multiple times so we define it as a method and can recall it often rather than continuously rewriting it
  - `def` is how we start to define one
  - `end` completes the method
  ```ruby
  def #name
    #method body
  end
  ```
  - when we have *parameters* we want to pass to a method that are outside of the method's scope we add them in the first line like this:
  ```ruby
  def name(parameter)
    #method body
  end 
  ```
  - parameter names, like variable names should be meaningful and explicit to aid other programmers in understanding your code
  - *Arguments* are pieces of information that are sent to a method invocation to be modified or used to return a specific result
  - *Default Parameters*
    - we can define a value for our argument parameter so that it has a default response when no value is passed to it.
    - an example would look like this if it had a default parameter of `'hello'`
    ```ruby
    def say(words='hello')
      puts words + '.'
    end
    ```
    - in this example Ruby will print 'hello.' unless another argument is passed to our say method as a parameter and prevents it from throwing an error if nothing is passed to it
    - parenthese are optional in calling methods
  - *Method Definition and Local Variable Scope*
    - variables defined inside of a method don't have scope outside of that method
    - don't confuse this with *method invocation in a block*
    - *obj.method or method(obj)*
      - when you send arguments to a method call: `some_method(obj)`
      - when called on an *explicit caller* it looks different: `a_caller.some_method(obj)`
      - the difference will have to be memorized *for now*
  - *Mutating the Caller*
    - When the method changes with argument!
    - See [mutate.rb](mutate.rb)
      - even though the array `a` is outside of the scope of the method `mutate` it is still altered
    - we have to read documentation and memorize what methods *mutate the caller* and which don't.
  - *puts vs return: The Sequel*
    - (return.rb)[return.rb] is a code example of how return works
    - Ruby automatically returns the evaluated result of the last line exectued
    - if we explicitly `return` in a method, the rest of the method doesn't affect what's returned
  - *Chaining Methods*
    - Because we know every method call returns something, we can chain methods goether for extremely expressive and succinct code
    ```ruby
    def add_three(n)
      n + 3
    end
    ```
    - The above returns that value incremented by 3, so if we call it like this `add_three(5)` it will return 8
    - since it returns a value, we can keep calling methods on it
    ```ruby
    add_three(5).times { puts ' this should print 8 times'}
    ```
    - this is calling the `times` method on the returned value of `add_three(5)`, which is 8...
    - if a method returns `nil` or throws an error the whole chain fails, so if we had written:
    ```ruby
    def add_three(n)
      puts  n + 3
    end
    ```
    - we would get an error when we called it... because `puts` prints a value but returns `nil`
    - to fix this we must make sure to call what we want returns at the end of our method like this:
    ```ruby
    def add_three(n)
      new_value n + 3
      puts new_value
      new_value # <= this last line returned by default in Ruby
    end
    ```
  - *Method Calls as Arguments*
    - we can nest methods as arguments inside other methods to create powerful succinct lines of code
    - `add(subtract(80, 10), multiply(subtract(20,6), add(30, 5)))`
    - the above would add the results of subtracting 10 from 80 and multiplying the results of subtracting 6 from 20 and adding 5 to 30.
    - we use parentheses to prevent any kind of confusion.
    - we must know what our nested method is returning as its value because that's what is being passed as the argument
## Summary
  - [greetings.rb](greetings.rb) a program that takes `greeting` and `name` as its parameter and returns a string.
  - [multiply.rb](multiply.rb) a program that has a method called `multiply` that takes two arguments and returns the product of the two numbers
  - [scream.rb](scream.rb) is a program that we fix from an example in the book that concatenates some `!`'s onto the input phrase