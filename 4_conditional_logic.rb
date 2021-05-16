Learning Outcomes
By the end of this lesson, you should be able to do the following:

Describe and list falsy values.
Explain how to use if, elsif, and else.
Explain the difference between if and unless.
Describe what ||, &&, and ! do.
Explain what short circuit evaluation is.
Describe what the ternary operator is and how to use it.
Explain what a case statement is and how it works.
__________________________________________________________________________________________________________________________

# Any conditional statement always has an answer that evaluates to true or false.
# The only false values in Ruby are nil and false themselves. Everything else is considered true.
# Even the string "false" is considered true in conditional expressions.
# In other languages, 0 or an empty string "" may be equivalent to false, but this is NOT the case with Ruby.

Simplest way to control the flow of code using conditionals is with the if statement.

puts "Wow, 1 is less than 2" if 1 < 2

The statement to be evaluated can be anything that returns true or false. 
It could be a mathematical expression, a variable value, or a call to a method. 
Only if the expression evaluates to true does the code inside the block run.

if...else statement - to check a condition and run some code if it's true, but run some other code if it's false. 

if attack_by_land == true
    puts "release the goat"
elsif attach_by_sea == true
    puts "release the shark"
else
    puts "release Kevin the octopus"
end

We can have as many elsif expressions as we want. 
The else clause is optional, but we usually want to provide some default value in case none of the previous expressions evalulate to true.

BOOLEAN LOGIC
To determine whether an operator evaluates to true or false, we need a comparison operator. Ruby provides several.

== (equals) returns true if the values compared are equal. 
!= (not equals) returns true if the values compared are not equal. 
>
<
>=
<=

eql? - checks both the value type and the actual value it holds. 
5.eql?(5.0) => false
5.eql?(5) => true
