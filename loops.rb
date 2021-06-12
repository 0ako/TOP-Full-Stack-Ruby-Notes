https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/loops#times-loop

LOOP LOOP____________________________________________________________________________________________________________________________________
An infinite loop that will just keep going unless you specifically request for it to stop, using the break command. 
Break is commonly used with a condition, as illustrated below:

i = 0
loop do
    puts "i is #{i}"
    i += 1
    break if i == 10
end

# This loop isn't used much in ruby, if you find yourself using loop, know that there is probably a better, more specific loop out there.

WHILE LOOP____________________________________________________________________________________________________________________________________
You declare the condition that will break out of the loop up front. A while loop continues for as long as the condition is true.

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
