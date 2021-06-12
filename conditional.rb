# # conditional.rb

# puts "Put in a number"
# a = gets.chomp.to_i

# if a == 3
#     puts "a is 3"
# elsif a == 4
#     puts "a is 4"
# else
#     puts "a is neither 3, nor 4"
# end

# if a == 5 then puts "a is 5" end

# # if condition can be appended at the very end 
# puts "a is 6" if a == 6

# puts "a is not 0" unless a == 0

# puts "Enter a number"
# a = gets.chomp.to_i

# case a
# when 5
#     puts "a is 5"
# when 6
#     puts "a is 6"
# else
#     puts "a is neither 5, nor 6"
# end

# puts "Enter a number"
# a = gets.chomp.to_i

# answer = case a
# when 5
#     "a is 5"
# when 6
#     "a is 6"
# else
#     "a is neither 5, nor 6"
# end

# puts answer

# puts "Input a string"
# str = gets.chomp

# str = str.upcase if str.length > 10 
# puts str

# def caps(str)
#     if str.length > 10
#         str.upcase
#     else
#         str
#     end
# end

# puts caps("Joe Smith")
# puts caps("Joe Robertson")

puts "input a number"
a = gets.chomp.to_i

answer = case a 
when a >= 0 && a <= 50
    "a is between 0 and 50"
when a >= 51 && a <= 100
    "a is between 51 and 100"
when a > 100
    "a is greater than 100"
else
    "a is smaller than 0"
end

puts answer

> puts("this isn't important") && puts("THIS IS IMPORTANT!!!")
"this isn't important"
=> nil 

# It returned nil instead of false because && and || and the like don't just return true or false.. 
# they return the result of the last expression to get evaluated, which was the nil from the puts. 

irb(main):009:0> 7 || nil
=> 7

# 7 || nil returns 7 (which behaves truthy) instead of true and 7 && nil returns nil (which behaves falsey) instead of false 