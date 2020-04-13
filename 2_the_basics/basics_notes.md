# *The Basics*
## - *Strings*
  - A *string* is a list of characgters in a specific sequence
  - Strings are surrounded by either single quotes `'hi there'` or double quotes `"hi there"`
    - both of these formats create a string, however, there are some differences
    - if your string contains `"` or `'` symbols you can either use the other symbol to delineate the strings start and end or use escaping.
      - *escaping* is putting a `\` in front of the symbol that you want to display. It tells Ruby that this isn't syntax
      - i.e. `"The man said, 'Hi there!'"` or `'The man said, \'Hi there!\'`
      - double quotes allow something called *string interpolation*
      - *String Interpolation* is a handy way to merge Ruby code with strings.
        - Syntax `#{ruby expression here}'
        - The returned expression will be concatenated with the surrounding string.
        - This only works with double quotes, `"`
## - *Symbols*
  - Ruby *symbols* are cfreate by placing a colon `:` before a word.
    - `:name`
    - A symbol is basically like a string that we  don't intend to print to the screen or change
    - Often referred to as immutable (unchangeable) string.
      - Not 100% technically correct, but usfule mnemonic device
## - *Numbers*
  - *Numbers* are represented many ways in Ruby:
    - *Integer* is a whole number only... no decimal point
    - *Float* is more complex and contains a decimal
## - *nil*
  - expresses nothing in Ruby.
  - a variable with a value of `nil` could be described as having 'nothing' or being 'completely empty' or as **'not any specfic type'**
  - one situation we see nil... when output is expected but none is retuned
  - check for nil type using `.nil?`
  - treated as **false** as it represents and absence of contents
  - `false` is not equivalent to `nil`
## - *Operations*
  - Adding, Subtracting, and Multiplying Integers
    - `+`, `-`, `*`, `/`
    - `%` *modulo* operand - gives the remainder from the division of two integers
    - beware when dividing integers, it won't give a float or show a remainder automatically just by using `/`
  - Multiplying and Dividing Floats
    - when using floats, you always get a float back even if the result is a plain integer
  - Equality Comparison
    - Use `==` to test if two objects are equal
      - this will return a *boolean value*... `true` or `false`
  - String Concatenation
    - Use `+` operator to join two strings together
    - String concatenation will not do addition; i.e. `'1' + '1'` returns `11`
    - You can't concatenate strings with other data types like integers or floats
  - Type Conversion
    - `to_i` is a method that can be called on a string to convert it to an integer
      - `'12'.to_i` returns `12`
      - conveniently can tell the numbers apart and therefore can be applied a string that contains a number as well as letters `'4 hi there'.to_i` returns `4`
    - `'to_f'` works the same but returns a float
    - `'to_s'` works in the opposite way to turn floats and integers into strings
## - *Basic Data Structures*
  - Arrays & Hashes are common data structures in Ruby
  - *Arrays*
    - information in an ordered list
    - can be made of strings, integers, floats, booleans, or any other data type
    - denoted by square brackets `[ ]`
      - `a = [ 1, 2, 3, 4, 5 ]` creates an array named `a` that contains `1` at `a[0]`, `2` at `a[1]`, etc.
    - we access *arrays* by their *index* like in the example above `a[0]` is array `a` at index `0`
  - *Hashes*
    - sometimes referred to as a dictionary
    - set of key-value pairs
    - represented by curly brackets `{}`
    - consists of a key, usually represented by a symbol `:symbol` that points to a value, denoted by using `=>` or any datatype.
    - can contain multiple items but are not ordered like *arrays*
    - `a = {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}` a hash named `a` that contains the string `'barks'` at key `:dog`, the string `'meows'` at key `:cat`, etc.
    - new hash syntax as of Ruby 1.9 would look like `a = { dog: 'barks', cat: 'meows', pig: 'oinks'}`
    - values can be accessed by their key in the same way that arrays are accessed by their index
      - `a[:cat]` returns `'meows'`
## - *Expressions and Returns*
  - *hash rocket* is the `=>` that shows the interpreter *returning* something
  - *expression* is anything that can be evaluated. Pretty much everything you write in Ruby is an expression.
    - expression in Ruby always returns something even if it's an error message or `nil`.
## - puts vs return
  - Expressions *do* something but they also *return* something
  - `puts` prints something on the screen but does not *return* anything
  - `return` passes a value from an expression
  - for example: `puts 'stuff'` will print `stuff` to the console and then on the next line you will see it returns `nil` (denoted by `=> nil`)
## - Summary
  - Exercises
    - we concatenate first_name & last_name
    - we use division and modulo to return a single digit from a four digit number in a specific spot--thousand-, hundred-, ten-, or single-digit spot
    - we create a hash of movies with a value of the year they were released and then call keys from that that hash to return those values
