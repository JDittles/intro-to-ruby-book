# **Hashes**
## - *What Is a Hash?*
  - a data structure that stores items by associated keys
  - not ordered by index like an array
  - entries are referred to as key-value pairs
  - an associative representation of data
  - *Creating a Hash*
    - Older Syntax
      - `=>` separates the key and the value
      - i.e. `old_syntax_hash = {:name => 'bob'}`
    - Newer Syntax
      - `:` separates the key and the value
      - i.e. `new_syntax_hash = {name: 'bob'}`
    - usually there are lots of key-value pairs in a hash
  - *Changing a Hash*
    - Adding to an existing Hash
      - `hash_name[:key] = 'value'`
    - Removing from an existing hash
      - `hash_name.delete(:key)`
    - Retrieving info from a hash
      - `hash_name[:key]`
    - Merging two hashes
      - `hash_name.merge!(other_hash_name)`
      - the bang suffix on `.merge` makes this change destructive
  - *Iterating over Hashes*
    - [iterating_over_hashes.rb](iterating_over_hashes.rb) an example that iterates over a hash
    - notice we give a variable to both the key and the value
  - *Hashes as Optional Parameters*
    - 