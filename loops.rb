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
What if we know exactly how many times we want our loop to run? Ruby lets us use something called a range to define an interval.
All we need to do is give Ruby the starting value, the ending value, and whether we want the range to be inclusive or exclusive
# (1..5) #inclusive range: 1, 2, 3, 4, 5
# (1...5) #exclusive range: 1, 2, 3, 4
# ('a'..'d') # we can make ranges of letters, too! a, b, c, d

FOR LOOP____________________________________________________________________________________________________________________________________
Used to iterate through a collection of information such as an array or range. 
These loops are useful if you need to do something a given number of times while also using an iterator. 

for i in 0..5
    puts "#{i} wake up!"
end

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
