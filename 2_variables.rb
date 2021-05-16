#https://launchschool.com/books/ruby/read/variables
# gets : get string
# .chomp : removes carriage return characters at the end (i.e. "\n")

#Variable Scope
# A "block" of code creates a new scope for variables.

# The key distinguishing factor for determining whether code delimited by {} or do/end is considered a block (and thereby creates a new scope for variables),
# is seeing if the {} or do/end immediately follows a method invocation.
# If a variable is initialized within for...do/end code, it is accessible globally,
# since for is part of the Ruby language and NOT a method invocation. therefore a variable declared within it is accessible globally.
# When we use each, times and OTHER method invocations, followed by {} or do/end, THAT'S when a new block is created.

# There are FIVE TYPES of variables: CONSTANTS, GLOBAL variables, LOCAL variables, CLASS variables, INSTANCE variables

# MY_CONSTANT = "I am available throughout your app."

puts "Hi " + name + "!"
10.times do 
    puts name
end

puts "What's your first name?"
first_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Hello, " + first_name + " " + last_name + "."


# Write an app that prompts the user's age, then outputs the user's age in 10, 20, 30, 40 years:

puts "How old are you?"
age = gets.chomp.to_i

print "In 10 years you will be "
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40