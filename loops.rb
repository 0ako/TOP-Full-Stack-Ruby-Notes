https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/loops#times-loop

WHILE LOOP____________________________________________________________________________________________________________________________________
# i = 0
# while i < 10 do 
#     puts "i is #{i}"
#     i += 1
# end

# while gets.chomp != "yes" do
#     puts "Will you go out with me?"
# end

UNTIL LOOP____________________________________________________________________________________________________________________________________
# i = 0
# until i >= 10 do
#     puts "i is #{i}"
#     i += 1
# end

# until gets.chomp == "yes" do
#     puts "Date me?"
# end

RANGES____________________________________________________________________________________________________________________________________
# (1..5) #inclusive range: 1, 2, 3, 4, 5
# (1...5) #exclusive range: 1, 2, 3, 4
# ('a'..'d') # we can make ranges of letters, too! a, b, c, d

FOR LOOP____________________________________________________________________________________________________________________________________


for i in 0..5
    puts "#{i} wake up!"
end

TIMES LOOP____________________________________________________________________________________________________________________________________
5.times do 
    puts "Hello, world!"
end

5.times do |number|
    puts "Alternative fact number #{number}"
end

UPTO and DOWNTO LOOPS________________________________________________________________________________________________________________________
# If you want to step through a series of numbers (or even letters) within a specific range, then these are the loops for you. 

5.upto(10) {|num| print "#{num} "} #=> 5 6 7 8 9 10
10.downto(5) {|num| print "#{num} "} #=> 10 9 8 7 6 5
