# INTRODUCTION
- ## *Abstraction*
  - *Interface* provides a way to interact with the underlying technologies without having to know how to interact with them directly
  - For programmers this is shown by *Domain Specific Languages* or *DSL's* like *Rails* and *RSpec* which are built on top of a programming language like *Ruby* which is built on *C* which translates to Assembly Language which translates to machine language to send 0s & 1s so the computer can  complete processes.
    - An interface for and interface for ...
- ## *Who This Book is For*
  - Beginners!
  - This is part one of two parts. The next part deals with  *Object-Oriented Programming* while this focuses on fundamentals
- ## *How to Read This Book*
  - You actually have to **do** the exercises.
  - Muscle memory builds by doing
- ## *Preparations*
  - Install Ruby... *duh*
    - Homebrew
      - Insert the following into command line to install homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
      - then you can conveniently `brew install ruby`
  - Using a Code Editor
    - They recommend [Sublime Text](http://sublimetext.com) but I'm cheap  and using [Visual Studio Code](https://code.visualstudio.com)
  - *Stylish* Ruby
    - [Ruby Style Guide](https://github.com/rubocop-hq/ruby-style-guide)
    1. Text editor's tab function should be set to 2 spaces and indenting should be set to use spaces
    2. When you see the `#` sign at the beginning of a line, that means anything after it, on the same line, is a comment.
    3. When you define or initialize a method, variable, or file, you shouldalways us `snake_case` formatting
    4. When a value is a constant it's delineated by `ALLCAPS`
    5. When working with `do/end` blocks, prefer `{ }` when the entire code expression fits on one line
    6. The last style convention you'll need to learn att his point is how to declare a class name. When naming your classes you will us `CamelCase` formatting. `CamelCase` uses no spaces and capitalizes each word.
    - __StYlE__
  - Reading Documentation
    - Key to not repeating yourself is familiarizing yourself with ruby documentation so you know what standard libraries contain that you  can use
    - Sometimes *API* is used to refer to documentation. It can also refer to how applications talk to eachother
    - [Ruby Documentation Site](https://ruby-doc.org/core-2.6/String.html)
      - *Class Name* or *Module Name* is at the top!
      - *Methods* listed out with either `::` or a `#` to indicate two different kinds of publicly accessible methods.
        - `::` are class methods (in documentation)
          - These you apply to a class i.e. `string.new('word')`
          - In actual Ruby code this is used for a namespace
        - `#` are instance methods (in documentation)
          - Instance methods can be applied directly to any instance of the class i.e. `"contents of a string".split`
          - In actual Ruby code this is used to denote a single-line comment
      - *Parent*
        - methods of the class are available to its subclasses
          - i.e. `String` is a sub-class of `Object` so methods in `Object` can be called on `String` but methods of `String` can't be called on the parent, `Object`
          - when reading documentation for a sub-class it's good to know the parent, and if not, use the documentation to see methods available to the parent when needed.
      - *Class/Module Index*
        - All classes are part of a namespace in Ruby and this menu is a list of all the other classes that are part of the same namespace as the current class.
      - *Included Modules*
        - indicate additional modules whose functionality is available to the class or sub-class you're viewing
          - i.e. `Comparable` shows up as an included module for the `String` sub-class, so we're able to use methods available to `Comparable` on any instance of the `String` sub-class
    - Reading documentation is something we should be familiar with and know how to navigate
  - Using the Command Line & irb
    - Just basic commands here
    - Will explain -irb environment. Used to test snippets of Ruby directly in CLI
    - Command Line
      - `mkdir`, `cd`, `touch`, `rm `, `cd ..`, `rmdir`, `rm -R`
    - -Irb
      - Prompt `v#.sv#.b#-### :001 >`
        - Tells us version number, subversion number, build number and then `:001` tells us what line we're on
      - Can write Ruby code and execute it by hitting enter
      - `exit` to exit -irb and return to regular Command Line
    - Running Ruby Code
      - `.rb` is the file extension for Ruby code
      - In CLI enter `Ruby doc_name.rb` to execute code
      - *Interpreter* is what executes code. It takes Ruby code and translates it to something the machine can execute.
      - If you're stuck in a loop `control-c`
  - What Are Ruby "Gems"?
    - RubyGems or gems for short
      - collection of Ruby files, or Ruby library that performs a certain task
      - other side of the term refers to the publishing system that is behind organization, listing and publishing of those libraries or gems
      - [Ruby Gems Website](https://rubygems.org/)
      - a Gem is "cut" when a new version becomes available
      - hosted on GitHub or in a repository, but available on the [website](https://rubygems.org/)
    - How do I use it?
      - `gem` command allows you to use RubyGems. When combined with the `install` command, one can download and install gems with their dependencies and any relevant documentation.
        - `gem install <gem name>`
      - `Gemfile` offers a simple solution for organizing gems and their dependencies in a central location to avoid losing track
    - Debugging Ruby Code with Pry
      - [Pry](https://github.com/pry/pry) is an alternative to `irb` with a host of awesome features.
        - first it must be installed `gem install pry`
      - Pry opens in a session just like -irb
      - `require "pry"` and insert a `binding.pry` in your file to debug with Pry
        - you put `require "pry"` on the first line of your .rb file
        - you put `binding.pry` where you want execution to pause
        - when the interpreter gets to the `binding.pry` command it opens a new `pry` session instead of moving on and gives us an opportunity to play around with our variables and objects to see why they're not working.
        - this is an **extremely** valuable debugging technique since it lets you pause execution to inspect the state of all variables and objects.
        - `Ctrl + D` resumes execution
    - Exercises
      - We create two files inside a directory, execute them, navigate out of the directory and delete the directory recursively to get rid of the exercise... then it's time for the next chapter!