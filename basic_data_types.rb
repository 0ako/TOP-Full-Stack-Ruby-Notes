# Ruby basic syntax and methods:

# snake_case formatting for defining a method, variable or file
# CONST variables are denoted with all uppercase letters
# When working with do/end blocks, prefer using {} when entire code expression fits on one line
# CamelCase is used to define class name

# In Ruby Documentation:
# :: indicates class methods
# # indicates instance methods

# In Ruby Code:
# :: is used as a namespace
# # is used as a comment

# Common String Methods (#Instance methods)
#capitalize 
    "hello".capitalize #=> "Hello"
#include?
    "hello".include?("lo")  #=> true
    "hello".include?("z") #=> false
#upcase
    "hello".upcase  #=> "HELLO"
#downcase
    "Hello".downcase  #=> "hello"
#empty
    "hello".empty? #=> false
    "".empty? #=> true
#length
    "hello".length #=> 5
#reverse
    "hello".reverse #=> "olleh"
#split
    "hello world".split #=> ["hello", "world"]
    "hello".split("") #=> ["h", "e", "l", "l", "o"]
#strip
    " hello, world  ".strip #=> "hello, world"

"he77o".sub("7", "l") #=> "hel7o"
"he77o".gsub("7", "l") #=> "hello"
"hello".insert(-1, " dude") #=> "hello dude"
"hello world".delete("l") #=> "heo word"
"!".prepend("hello, ", "world") #=> "hello world!"

5.to_s #=> "5"
nil.to_s #=> ""
:symbol.to_s #=> "symbol"

'4'.to_i #=> 4
'4 hi there'.to_i #=> 4
'hi there 4'.to_i #=> 0
'4'.to_f #=> 4.0
'4 hi there'.to_f #=> 4.0
'hi there 4'.to_f #=> 0.0


#Strings can be changed, so every time a string is used, Ruby has to store it in memory even if an existing string with the same value already exists. 
#Symbols are stored in memory only once, making them faster in certain situations.

#Symbols
:my_symbol
"string" == "string" #=> true
"string".object_id == "string".object_id #=> false # The #object_id method returns an integer identifier for an object.
:symbol.object_id == :symbol.object_id # true

#Basically, a symbol is used when you want to reference something like a string but don't ever intend to print it to the screen or change it. It is often referred to as an immutable (i.e. unchangeable) string.

#Nil
x = nil            # nil literal used here
"Hello World".nil? #=> false
#nil can be used in a conditional statement, and will be treated as false. 
nil == false #=> false #a importantant caveat. while both are treated as negative when evaluated in an expression, they are not equivalent.

# In modulo expressions, the value to the left of the % is called the quotient, and the value to the right is called the modulus.

# Remainder method computes and returns the value of an integer division operation
16.remainder(5) #=> 1
# Divmod method computes both the integer result of the division and its modulo value.
16.divmod(5) #=> [3, 1]

# Modulo operations return a positive integer when the second operand is positive, and a negative integer when the second operand is negative.
# Remainder operations return a positive integer when the first operand is positive, and a negative integer when the first operand is negative.

#Arrays
[ 1, 2, 3, 4, 5][0] #=> 1
[ 1, 2, 3, 4, 5][-1] #=> 5

#Hashes
#A hash, sometimes referred to as a dictionary, is a set of key-value pairs. Hash literals are represented with curly braces { }. 
#A key-value pair is an association where a key is assigned a specific value.
#A hash consists of a key, usually represented by a symbol, that points to a value (denoted using a =>) of any type of data. 

{:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat] #=> "meows"

#The most important thing to remember about hashes is that you use keys to set or retrieve values.

#Expressions and Return
#When you type something in at the irb prompt you are creating an expression. 
#An expression is anything that can be evaluated, and pretty much everything you write in Ruby is an expression.
#Ruby expressions always return a value, even if that value is nil or an error.

#Puts vs Return
#Puts method prints something to the screen. However, puts does not return what is printed to the screen.
#Expressions DO something, but they also RETURN something. The value returned is not necessarily the action that was performed.

# puts 'stuff'
# stuff
# => nil

#You can see that the word stuff was printed to the console and then a nil, which is Ruby's way of saying 'nothing', was returned. It's important to understand that distinction.

# a = puts "stuff"
# stuff
# => nil

# puts a 

# => nil

#a is assigned to the value returned by puts "stuff", which is nil. Therefore, puts a results in "nil" being printed out. 

#Exercises https://launchschool.com/books/ruby/read/basics
#2. 
thousands = 4321 / 1000
hundreds = 4321 % 1000 / 100 #4321 / 100 % 10
tens = 4321 % 100 / 10 #4321 / 10 % 10
ones = 4321 % 10

# puts "thousands: #{thousands}"
# puts "hundreds: #{hundreds}"
# puts "tens: #{tens}"
# puts "ones: #{ones}"

#3
movies = { jaws: 1975, #hash element reference
           anchorman: 2004,
           man_of_steel: 2013,
           a_beautiful_mind: 2001,
           the_evil_dead: 1981 }

# puts movies[:jaws]
# puts movies[:anchorman]
# puts movies[:man_of_steel]
# puts movies[:a_beautiful_mind]
# puts movies[:the_evil_dead]

#4
dates = [1975, 2004, 2013, 2001, 1981]
puts dates[0, 5] #array element reference