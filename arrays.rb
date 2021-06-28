ARRAYS________________________________________________________________________________________________________________________________________
https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/arrays

In real-world development, where you’ll be working with dozens (and even hundreds!) of variables, working with numbers and strings individually is tedious, if not impossible.

One way Ruby allows you to represent a collection of data is with arrays, which you can think of as ordered lists. 
Rather than working with individual variables, numbers, or strings, 
an array allows you to create and manipulate an ordered and indexed collection of these data. 

The individual variables, numbers, or strings within an array are known as elements. 
An array can contain any combination of variables, numbers, strings, or other Ruby objects (including other arrays), 
although it is advisable to keep similar data types in any one array.

Learning Outcomes_________________________________________________________
Describe what an array is, and explain why it’s useful.
Describe two different ways of creating a new array.
Explain how to access array elements using different methods.
Explain three different ways to add data to an array.
Explain how to remove elements from an array.

CREATING ARRAYS

Array Literals: commonly used to create arrays, which is simply a special syntax used to create instances of an array object.

num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

Array.new: An array can also be created by calling the Array.new method. 
When you call this method, you can also include up to 2 optional arguments (initial size and default value):

Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]

Accessing Elements
Every element in an array has an index, which is a numerical representation of the element’s position in the array.
Ruby arrays use zero-based indexing.
Accessing a specific element within an array is as simple as calling myArray[x], where x is the index of the element you want. 
Calling an invalid position will result in nil. 
Ruby also allows the use of negative indices, which return elements starting from the end of an array, starting at [-1].

str_array = ["This", "is", "a", "small", "array"]
str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"

Ruby provides the #first and #last array methods
These methods can take an integer argument, e.g., myArray.first(n) or myArray.last(n), 
which will return a new array that contains the first or last n elements of myArray, respectively.

str_array = ["This", "is", "a", "small", "array"]
str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]

ADDING AND REMOVING ELEMENTS
Adding an element to an existing array is as simple as using the #push method or the shovel operator <<. 
Both methods will add elements to the end of an array and return that array with the new elements. 
Both the push and the << methods mutate the caller, so the original array is modified.

The #pop method will remove the element at the end of an array and return the element that was removed.
Note that when we called the pop method, the original array variable was modified (ie, this is also a method that mutates the caller), 
but the returned value is the popped element, as shown in the first line above. 

num_array = [1, 2]
num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]

The methods #shift and #unshift are used to add and remove elements at the beginning of an array. 
The #unshift method adds elements to the beginning of an array and returns that array (much like #push). 

The #shift method removes the first element of an array and returns that element (much like #pop).

num_array = [2, 3, 4]
num_array.unshift(1)      #=> [1, 2, 3, 4]
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]

Both #pop and #shift can take integer arguments:

num_array = [1, 2, 3, 4, 5, 6]
num_array.pop(3)          #=> [4, 5, 6]
num_array.shift(2)        #=> [1, 2]
num_array                 #=> [3]

ADDING AND SUBTRACTING ARRAYS

Adding arrays:
What do you think will be the outcome of [1, 2, 3] + [3, 4, 5]?
If you guessed [1, 2, 3, 3, 4, 5], congratulations! 
Adding two arrays will return a new array built by concatenating them, similar to string concatenation. The concat method works the same way.

a = [1, 2, 3]
b = [3, 4, 5]
a + b         #=> [1, 2, 3, 3, 4, 5]
a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

Subtracting arrays:
To find the difference between two arrays, you can subtract them using -. 
This method returns a copy of the first array, removing any elements that appear in the second array.

[1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]

BASIC METHODS

Ruby gives you many methods to manipulate arrays and their contents (over 150!), many of which are beyond the scope of this lesson. 
For full documentation, go to http://ruby-doc.org/, click on “Core API”, scroll down to the Classes section, and click on “Array”. 
There, you’ll find the most up-to-date documentation on the various methods available to Ruby arrays along with explanations.

There are many methods available to Ruby arrays, and the behavior of some methods change depending on a variety of factors, 
such as if they take arguments or not. Therefore, ruby-doc.org will be your best friend in maximizing your aptitude with arrays. 
So visit soon, and visit often.

Calling the #methods method on an array will also yield a long list of the available methods.

num_array.methods       #=> A very long list of methods

Here is a brief look at some other common array methods you might run into:

[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array.
   
    irb: 001 > a = [1, 2, [3, 4, 5], [6, 7]]
    => [1, 2, [3, 4, 5], [6, 7]]
    irb: 002 > a.flatten
    => [1, 2, 3, 4, 5, 6, 7]

    The flatten method is not destructive. 

The include? method checks to see if the argument given is included in the array. 
It has a question mark at the end of it which usually means that you should expect it to return a boolean value, true or false. 
(Such methods are called predicates.) 
Just like the methods that end in a "!", this is strictly by convention only and not a property of the language.
[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"

https://launchschool.com/books/ruby/read/arrays

MODIFYING ARRAYS________________________________________________________________________________________________________________________________
Often you'll have an array and you'll want to operate on many of the elements in the array the same way. 
Ruby has many methods that do these types of operations.

The map method iterates over an array applying a block to each element of the array and returns a new array with those results. 
The irb session below shows how to use map to get the square of all numbers in an array. 
The collect method is an alias to map - they do the same thing.

    irb :001 > a = [1, 2, 3, 4]
    => [1, 2, 3, 4]
    irb :002 > a.map { |num| num**2 }
    => [1, 4, 9, 16]
    irb :003 > a.collect { |num| num**2 }
    => [1, 4, 9, 16]
    irb :004 > a
    => [1, 2, 3, 4]

# You'll notice that after performing these methods there is no change to the initial array. 
# These methods are not destructive (i.e., they don't mutate the caller). How do you know which methods mutate the caller and which ones don't? 
# You have to use the methods and pay attention to the output in irb; that is, you have to memorize or know through using it.

# The delete_at method can be helpful if you'd like to eliminate the value at a certain index from your array. 
# This modifies your array destructively. Once you call this method, you are changing your array permanently.

    irb :005 > a.delete_at(1)
    => 2
    irb :006 > a
    => [1, 3, 4]

Sometimes you will know the value that you want to delete, but not the index. In these situations you will want to use the delete method. 
The delete method permanently deletes all instances of the provided value from the array.

    irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
    => ["cat", "dog", "bird", "cat", "snake"]
    irb :008 > my_pets.delete("cat")
    => "cat"
    irb :009 > my_pets
    => ["dog", "bird", "snake"]

The uniq method iterates through an array, deletes any duplicate values that exist, then returns the result as a new array.
The uniq method does not modify the original b array; it returns a new array with the duplicates removed.

    irb :010 > b = [1, 1, 2, 2, 3, 3, 4, 4]
    => [1, 1, 2, 2, 3, 3, 4, 4]
    irb :011 > b.uniq
    => [1, 2, 3, 4]
    irb :012 > b
    => [1, 1, 2, 2, 3, 3, 4, 4]

If you add the bang suffix (!) to this method, you can perform the uniq function destructively. Much like the way the delete method works.

    irb :013 > b = [1, 1, 2, 2, 3, 3, 4, 4]
    => [1, 1, 2, 2, 3, 3, 4, 4]
    irb :014 > b.uniq!
    => [1, 2, 3, 4]
    irb :015 > b
    => [1, 2, 3, 4]

uniq and uniq! are two different methods for Ruby Arrays. You cannot simply append a ! onto any method and achieve a destructive operation.

ITERATING OVER AN ARRAY_____________________________________________________________________________________________________________________
# We talked in the loop section about using each to iterate over an array. The Ruby standard library has many similar methods. 
# Let's take a look at the select method. 
# This method iterates over an array and returns a new array that includes any items that return true to the expression provided. 
# That's a mouthful. As always, looking at code is more helpful than using a bunch of words.

    irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    irb :002 > numbers.select { |number| number > 4 }
    => [5, 6, 7, 8, 9, 10]
    irb :003 > numbers
    => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

The select method selects all of the numbers that are greater than 4 and returns them in an array. 
It does not mutate the caller (the original numbers array is unmodified).

Methods With a !
The bang suffix (!) at the end of the method name usually indicates that the method will change (or mutate) the caller permanently. 
Unfortunately this is not always the case. 
It is a good rule to be wary of any method that has the bang suffix and to make sure to check the Ruby documentation 
to see if it will behave destructively (the word "destructive" here just means mutating the caller).

Also, please note that there are methods like pop and push that are destructive, but do not have a ! at the end. 

Mutating the Caller: The Sequel
https://launchschool.com/books/ruby/read/arrays#mutatingthecallerthesequel

Nested Arrays
https://launchschool.com/books/ruby/read/arrays#nestedarrays

Comparing Arrays
https://launchschool.com/books/ruby/read/arrays#comparingarrays 
You can compare arrays for equality using the == operator.

    irb :001 > a = [1, 2, 3]
    => [1, 2, 3]
    irb :002 > b = [2, 3, 4]
    => [2, 3, 4]
    irb :003 > a == b
    => false
    irb :004 > b.pop
    => 4
    irb :005 > b.unshift(1)
    => [1, 2, 3]
    irb :006 > a == b
    => true

# You'll notice that we used the unshift method in this example. unshift is a lot like the push method. 
# However, instead of adding values to the end of the list, unshift adds values to the start of the list.

to_s
https://launchschool.com/books/ruby/read/arrays#to_s
The to_s method is used to create a string representation of an array. 
Ruby does this behind the scenes when you use string interpolation to print an array to the screen.

    irb :001 > a = [1, 2, 3]
    => [1, 2, 3]
    irb :002 > "It's as easy as #{a}"
    => "It's as easy as [1, 2, 3]"

In order to get our array to print properly, Ruby is calling the to_s method on our array and adding it into the string.

UNSORTED METHODS BELOW - they are common array methods, should I put them under ITERATING OVER AN ARRAY?_______________________________

EACH_INDEX
https://launchschool.com/books/ruby/read/arrays#each_index
The each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to 
the value at each index. It passes the index of the element into the block and you may do as you please with it. The original array is returned.

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1
This is index 2
This is index 3
This is index 4
=> [1, 2, 3, 4, 5]

EACH_WITH_INDEX
https://launchschool.com/books/ruby/read/arrays#each_with_index 
Another useful method that works in a similar way to each_index is each_with_index.

irb: 001 > a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb: 002 > a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
1. 1
2. 2
3. 3
4. 4
5. 5
=> [1, 2, 3, 4, 5]

each_with_index gives us the ability to manipulate both the value and the index by passing in two parameters to the block of code. 
The first is the value and the second is the index. You can then use them in the block.

SORT
https://launchschool.com/books/ruby/read/arrays#sort
The sort method is a handy way to order an array. It returns a sorted array.

irb :001 > a = [5, 3, 8, 2, 4, 1]
=> [5, 3, 8, 2, 4, 1]
irb :002 > a.sort
=> [1, 2, 3, 4, 5, 8]
Once again, test in irb to see if the sort method is destructive. (It's not, but test it out for yourself.) 
We won't remind you to test this in the future, but when you see methods like this in the future, 
ask yourself "is this method returning new data, or is the original data being modified?".

PRODUCT
https://launchschool.com/books/ruby/read/arrays#product
The product method can be used to combine two arrays in an interesting way. 
It returns an array that is a combination of all elements from all arrays.

irb :001 > [1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]
There are too many interesting methods to cover, but we wanted to give you a taste of the power of Ruby arrays and 
the many handy methods that come built-in with Ruby.
If you ever think "I want my array to...", there is probably a method that already does this. First, check the documentation.

EACH vs MAP 
https://launchschool.com/books/ruby/read/arrays#eachvsmap
Just click the link

EACH
# each provides a simple way of iterating over a collection in Ruby and is more preferred to using the for loop. 
# The each method works on objects that allow for iteration and is commonly used along with a block. 
# If given a block, each runs the code in the block once for each element in the collection and returns the collection it was invoked on. 
# If no block is given, it returns an Enumerator. Let's look at some simple examples:

irb :001 > a = [1, 2, 3]
irb :002 > a.each { |e| puts e }
1
2
3
=> [1, 2, 3]

# The above shows the most common way of using each. We're iterating over each element on the array a and printing it out. 
# Finally it returns [1, 2, 3].

# We can also modify the elements in a and print them out:

irb :003 > a = [1, 2, 3]
irb :004 > a.each { |e| puts e + 2 }
3
4
5
=> [1, 2, 3]

# Again, we print out the modified values and return the original collection a.

# In this chapter, so far, we've been using curly brace blocks exclusively. Don't forget that you can also use do...end as well:

irb :005 > a = [1, 2, 3]
irb :006 > a.each do |e|
irb :007 *   puts e + 2
irb :008 * end
3
4
5
=> [1, 2, 3]

# Here is a final example with no block; an Enumerator is returned:

irb :009 > a = [1, 2, 3]
irb :010 > a.each
=> #<Enumerator: ...>

MAP
# map also works on objects that allow for iteration. Like each, when given a block it invokes the given block once for each element 
# in the collection. Where it really differs from each is the returned value. 
# map creates and returns a new array containing the values returned by the block. Let's see it in action:

irb :011 > a = [1, 2, 3]
irb :012 > a.map { |x| x**2 }
=> [1, 4, 9]

# We square each element in the block and create a new array containing the returned values by the block. Finally the new array is returned.

# To really examine that map creates a new array consisting of the returned value of the block, let's see an example with map and puts:

irb :013 > a = [1, 2, 3]
irb :014 > a.map { |x| puts x**2 }
=> [nil, nil, nil]

# Because puts returns nil every time the block is invoked nil is returned which makes up the values in the newly created returned array.

# Finally, if no block is given, map returns an Enumerator:

irb :015 > a = [1, 2, 3]
irb :016 > a.map
=> #<Enumerator: ...>

# each and map are important methods to know but can be quite confusing in the beginning. 
# Another way to remember these methods: use each for iteration and map for transformation.

SUMMARY
# Arrays are an extremely valuable data set. They can be used to store many different kinds of data and you'll see them very often in the wild. 
# Ruby's array class has lots of built-in methods that can be used to perform many of the daily functions that programmers use. 

