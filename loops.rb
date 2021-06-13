https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/loops#times-loop

LOOP LOOP____________________________________________________________________________________________________________________________________
Loop takes a block, which is denoted by { } or do  end. A loop will execute any code within the block until you manually intervene
    with Ctrl+c or insert a break statement inside the block, which will force the loop to stop and the execution will continue after the loop. 

loop do
  puts "This will keep printing until you hit Ctrl + c"
end

An infinite loop that will just keep going unless you specifically request for it to stop, using the break command.
The break keyword will not exit the program, but only exit the loop and execution will continue on after the loop. 
Break is commonly used with a condition, as illustrated below:

i = 0
loop do
    puts "i is #{i}"
    i += 1
    break if i == 10
end

# This loop isn't used much in ruby, if you find yourself using loop, know that there is probably a better, more specific loop out there.

#Let's look at adding conditions within a loop by printing all even numbers from 0 to 10. 
i = 0 
loop do
    i += 2
    puts i
    if i >=10 
        break
    end
end

# Below, we use the keyword next to skip the rest of the current iteration and start executing the next iteration. 
# We'll use the same example as before to demonstrate. This time we'll skip 4. 

i = 0 
loop do
    i += 2
    if i == 4
        next
    end
    puts i
    if i == 10 
        break
    end 
end   

break and next are important loop control concepts that can be used with loop or any other loop construct in Ruby, 
When combined with conditionals, you can start to build simple programs with interesting behavior.


DO/WHILE LOOP_________________________________________________________________________________________________________________________________
# A do/while loop works in a similar way to a while loop; one important difference is that the code within the loop gets executed one time, 
# prior to the conditional check to see if the code should be executed. 
# In a "do/while" loop, the conditional check is placed at the end of the loop as opposed to the beginning. 
# Let's write some code that asks if the user wants to perform an action again, but keep prompting if the user enters 'Y'. 
# This is a classic use case for a "do/while", because we want to repeatedly perform an action based on some condition, 
# but we want the action to be executed at least one time no matter what.

# perform_again.rb
loop do
    puts "Do you want to do that again?"
    answer = gets.chomp
    if answer != "y"
        break
    end
end

# Notice that we're using a simple loop, except the condition to break out of the loop occurs at the end, 
# therefore ensuring that the loop executes at least once. 

WHILE LOOP____________________________________________________________________________________________________________________________________
You declare the condition that will break out of the loop up front. A while loop continues for as long as the condition is true.

# In other words: A while loop is given a parameter that evaluates to a boolean (remember, that's just true or false). 
# Once that boolean expression becomes false, the while loop is not executed again, and the program continues after the while loop.

# Let's try an example of a while loop to countdown from any number given by the user and print to the screen each number as it counts. 
x = gets.chomp.to_i
while x >= 0
  puts x
  x -= 1
end
puts "Done!"

An example of using a while loop with a count. Because the breakout condition is declared up front, the intention of the code is much clearer. 
# i = 0
# while i < 10 do 
#     puts "i is #{i}"
#     i += 1
# end

You can also use while loops to repeatedly ask a question of the user until they give the desired response.
# while gets.chomp != "yes" do
#     puts "Will you go out with me?"
# end

This shows the flexibility advantage of the while loop. It will run until a break condition is met, 
which could be for a variable number of loops or a number of loops that is initially known.

Conditionals Within Loops_______________________________________________
# To make loops more effective and precise, we can add conditional flow control within them to alter their behavior. 
# Let's use an if statement in a while loop to demonstrate.

x = 0
while x <= 10
    if x.odd?
        puts x
    end
    x += 1
end

UNTIL LOOP____________________________________________________________________________________________________________________________________
The until loop is the opposite of the while loop. An until loop continues for as long as the condition is false. 
As much as possible, you should avoid negating your logical expressions using ! (not), as it makes the logic more difficult to reason through.

# i = 0
# until i >= 10 do
#     puts "i is #{i}"
#     i += 1
# end

This example shows how you can use until to avoid the negation ! that the above while loop had to use.
# until gets.chomp == "yes" do
#     puts "Date me?"
# end

Another example of a countdown:
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

RANGES____________________________________________________________________________________________________________________________________
A range is a special type in Ruby that captures a range of elements. 
What if we know exactly how many times we want our loop to run? Ruby lets us use something called a range to define an interval.
All we need to do is give Ruby the starting value, the ending value, and whether we want the range to be inclusive or exclusive
# (1..5) #inclusive range: 1, 2, 3, 4, 5
# (1...5) #exclusive range: 1, 2, 3, 4
# ('a'..'d') # we can make ranges of letters, too! a, b, c, d

FOR LOOP____________________________________________________________________________________________________________________________________
# Used to iterate through a collection of information such as an array or range. In otherwords, to loop over a collection of elements.
# Unlike a while loop where if we're not careful we may cause an infinite loop, for loops have a definite end,
# since it's looping over a finite number of elements. 
# It begins with for, followed by a variable, then the in reserved word, then a collection of elements. We'll show this using an array and a range.
# These loops are useful if you need to do something a given number of times while also using an iterator. 

for i in 0..5
    puts "#{i} wake up!"
end

# Countup
x = gets.chomp.to_i
for i in 1..x do
  puts i
end
puts "Done!"

The odd thing about for loops: it returns the collection of elements after it executes, whereas the earlier while loop examples return nil.
x = [1, 2, 3, 4, 5]
for i in x do
  puts i
end
puts "Done!"


TIMES LOOP____________________________________________________________________________________________________________________________________
Used if you need to run a loop a specified number of times. It works by iterating through a loop a specified number of times. 
It even throws in the bonus of accessing the number it is currently iterating through. 
5.times do 
    puts "Hello, world!"
end

5.times do |number|
    puts "Alternative fact number #{number}"
end

Remember, loops start counting from a zero index unless otherwise specified. 

UPTO and DOWNTO LOOPS________________________________________________________________________________________________________________________
# Use these methods to iterate from a starting number either up to or down to another number. 
# If you want to step through a series of numbers (or even letters) within a specific range, then these are the loops for you. 

5.upto(10) {|num| print "#{num} "} #=> 5 6 7 8 9 10
10.downto(5) {|num| print "#{num} "} #=> 10 9 8 7 6 5

ITERATORS_____________________________________________________________________________________________________________________________________
# Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.
# Arrays are ordered lists. Let's say that you had an array of names and you wanted to print them to the screen. 
# How could you do that? You could use the each method for arrays, like this:

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
names.each { |name| puts name }

# We have called the each method using the dot operator (.) on our array. 
# What this method does is loop through each element in our array, in order, starting from 'Bob'. 
# Then it begins executing the code within the block. 
# The block's starting and ending points are defined by the curly braces { }
# Each time we iterate over the array, we need to assign the value of the element to a variable. 
# In this example we have named the variable name and placed it in between two pipes |. 
# After that, we write the logic that we want to use to operate on the variable, which represents the current array element. 
# In this case it is simply printing to the screen using puts.

# A block is just some lines of code ready to be executed. When working with blocks there are two styles you need to be aware of. 
# By convention, we use the curly braces { } when everything can be contained in one line. 
# We use the words do and end when we are performing multi-line operations. 

# Let's add some functionality to our previous program to try out this do/end stuff.

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# There are many other iterator methods in Ruby, and over time, you'll get to use a lot of them. 
# For now, know that most Rubyists prefer to use iterators, like the each method, to loop over a collection of elements.

RECURSION______________________________________________________________________________________________________________________________
https://launchschool.com/books/ruby/read/loops_iterators#recursion

# Before starting this section on Recursion, you may want to review the material on the call stack from the Methods chapter. 
# Understanding the call stack will help you better understand recursion.

# Recursion is another way to create a loop in Ruby. Recursion is the act of calling a method from within itself. 
# That probably sounds confusing so let's look at some actual code to get a better idea.

# Doubler without recursion
def doubler(start)
    puts start * 2
end

# Doubler with recursion
def doubler(start)
    puts start
    if start < 10
        doubler(start * 2)
    end
end

Fibonacci_________________________________________________________________
# We are using a method that uses recursion to calculate the nth number in the fibonacci sequence. 
# The fibonacci sequence is a sequence of numbers in which each number is the sum of the previous two numbers in the sequence.

number = gets.chomp.to_i

def fibonacci(number)
    if number < 2
        number
    else
        fibonacci(number - 1) + fibonacci(number - 2)
    end
end

puts fibonacci(number)

# When learning recursion, drawing diagrams can help. We can use a tree like structure to see what is happening.

# Each time the code branches off again you are calling the fibonacci function from within itself two times. 
# If you take all of those ones and zeros and add them together, you'll get the same answer you get when you run the code. 
# You can see why computer programs are handy now. 
# Think if you had to draw that diagram out every time you wanted to know the fibonacci respresentation of a number. Yikes!

# The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls. 
# You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be evaluated.

Summary_________________________________________________________________
# Loops and iterators are a great way to perform repeated operations on a data set. 
# Often, in Ruby, you'll find yourself reaching for an iterator before a loop, but not all the time. 

# Recursion, the ability to call a method inside of itself, can also do some powerful operations when solving problems.

Exerises_______________________________________________________________

x = ""
while x != "STOP" do
    puts "Type STOP to stop"
    x = gets.chomp
end

def countdown(number)
    if number < 1
        puts number
    else 
        puts number
        countdown(number - 1)
    end
end
