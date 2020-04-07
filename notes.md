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
      - Insert the following into command line to install homebrew ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"```
      - then you can conveniently ```brew install ruby```
  - Using a Code Editor
    - They recommend [Sublime Text](http://sublimetext.com) but I'm cheap  and using [Visual Studio Code](https://code.visualstudio.com)
  - *Stylish* Ruby
    - [Ruby Style Guide](https://github.com/rubocop-hq/ruby-style-guide)
    1. Text editor's tab function should be set to 2 spaces and indenting should be set to use spaces
    2. When you see the ```#``` sign at the beginning of a line, that means anything after it, on the same line, is a comment.
    3. When you define or initialize a method, variable, or file, you shouldalways us ```snake_case``` formatting
    4. When a value is a constant it's delineated by ```ALLCAPS```
    5. When working with ```do/end``` blocks, prefer ```{ }``` when the entire code expression fits on one line
    6. The last style convention you'll need to learn att his point is how to declare a class name. When naming your classes you will us ```CamelCase``` formatting. ```CamelCase``` uses no spaces and capitalizes each word.
    - __StYlE__
  - Reading Documentation
    - Key to not repeating yourself is familiarizing yourself with ruby documentation so you know what standard libraries contain that you  can use
    - Sometimes *API* is used to refer to documentation. It can also refer to how applications talk to eachother
    - [Ruby Documentation Site](https://ruby-doc.org/core-2.6/String.html)
      - *Class Name* or *Module Name* is at the top!
      - *Methods* listed out with either ```::``` or a ```#``` to indicate two different kinds of publicly accessible methods.
        - ```::``` are class methods
        - ```#``` are instance methods
        - Their use in Ruby Documentation is completely different then their use in actual code