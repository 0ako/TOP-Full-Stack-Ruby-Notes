Learning Outcomes
By the end of this lesson, you should be able to do the following:

Describe and list falsy values.
Explain how to use if, elsif, and else.
Explain the difference between if and unless.
Describe what ||, &&, and ! do.
Explain what short circuit evaluation is.
Describe what the ternary operator is and how to use it.
Explain what a case statement is and how it works.

https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/conditional-logic _________________________

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
elsif attack_by_sea == true
    puts "release the shark"
else
    puts "release Kevin the octopus"
end

We can have as many elsif expressions as we want. 
The else clause is optional, but we usually want to provide some default value in case none of the previous expressions evalulate to true.

BOOLEAN LOGIC__________________________________________________________________________________________________________________________________
To determine whether an operator evaluates to true or false, we need a comparison operator. Ruby provides several.

We have the 5 standard ones:
== (equals) returns true if the values compared are equal. 
!= (not equals) returns true if the values compared are not equal. 
>
<
>=
<=

eql? - checks both the value type and the actual value it holds. 
5.eql?(5.0) #=> false
5.eql?(5) #=> true

equal? - checks whether both values are the exact same object in memory. Two variables pointing to the same number will usually return true.
a = 5
b = 5
a.equal?(b) #=> true
The above expression is true because of the way computers store integers in memory. However,
a = "hello"
b = "hello"
a.equal?(b) #=> false
equal? considers the two strings as false. This happens because computers cannot store strings in the same efficient way as they store numbers.
Although the values of the variables are the same, the computer has created two separate string objects in memory.

<=> the spaceship operator - Ruby has this special operator. Unlike the other comparison operators, which all return true or false, 
the spaceship operator returns one of three numerical values:

-1 if the value on the left is LESS THAN the value on the right;
0  if the value on the left is EQUAL to the one on the right;
1  if the value on the left is GREATER THAN to the one on the right.

The spaceship operator is most commonly used in SORTING FUNCTIONS.

All the above operators work on data types other than numbers, such as strings.

LOGICAL OPERATORS_____________________________________________________________________________________________________________________________
To write an expression that contains MORE THAN ONE CONDITION, we need logical operators, which are !(not), &&(and), ||(or) 

https://avdi.codes/how-to-use-rubys-english-andor-operators-without-going-nuts/
Ruby has two different forms of logical operators. It has the symbolic form: &&, || and it has the English form: and, or
These two forms are not the same.
E.g. the English 'and' operator has much lower precedence than the symbolic && operator.
Not only do the English operators have lower precedence than the symbolic ones, they also have different precendence in relation to each other.
The symbolic && has higher precendence than ||
But the English 'and' and 'or' operators have equal precendence, so they are evaluated from left to right.

The English operators are one of the features Ruby inherits from Perl. In Perl, English operators are used as control flow operators.
When used as control flow, the program is not interested in the boolean result of an 'or' operator.
Rather, it is exploiting the short circuiting behaviour of 'or' to only execute the code on the right if the left returns a falsy value.

-

With && and || operators, the order of logic is always evaluated from left to right. 

SHORT CIRCUIT EVALUATION_____________________________________________________________________________________________________________________
Using the && operator, both expressions must return true. If the first expression is false, then the second expression is never checked.
To the Ruby Interpreter, it is pointless to evaluate the second half, as the overall expression can never return true.

if 1 < 2 && 5 < 6
    puts "Party at Mio's!"
end

if 1 < 2 and 5 < 6
    puts "Party at Mio's!"
end


With the || operator, if the first expression evaluates to true, then the second expression is never checked, 
because the complete expression is already true, and the code in the block is run.

if 10 < 2 || 5 < 6
    puts "Party at Kevin's!"
end

# Can also be written as
if 10 < 2 or 5 < 6
    puts "Party at Kevin's!"
end

The ! operator reverses the logic of the expression. So, if an expression itself returns false, using the not operator makes the expression true,
and the code inside the block will be executed.

if !false #=> true

if !(10 < 5) #=> true

CASE STATEMENTS__________________________________________________________________________________________________________________
Are a neat way of writing several conditional expressions that would normally require multiple if...elsif statements. 
You can assign the return value from a case statement to a variable for use later. 
Case statements process each condition in turn, and if the condition returns false, it will move onto the next one until a match is found. 
An else clause can serve as a default if no match is found. 

grade = "F"

did_i_pass = case grade
when 'A' then "Hell yeah!"
when 'D' then "Don't tell mom"
else "McDonald's is hiring"
end

As soon as a match is found, the value of that match is returned, and the case statement stops execution. 
Alternatively, if we want to do some more complex code manipulation, we can remove the then keyword and instead place the code to be executed on the next line.

grade = "F"

case grade
when 'A'
    puts "Hell yeah!"
when 'D' 
    puts "Don't tell mom"
else 
    puts "McDonald's is hiring"
end

UNLESS STATEMENTS__________________________________________________________________________________________________________________
An unless statement works in the opposite way as an if statement. It only processes the code in the block if the expression evaluates to false. 

age = 18
unless age < 17
    puts "Get a job"
end

You can also write a simple unless statement on one line, and add an else clause. 
age = 18
puts "Welcome to adult life" unless age < 17

unless momlocation = home
    puts "come over to my house"
else
    "stay home"

Use an unless statement when you want to NOT do something if a condition is true, because it can be more readable than using if !true

TERNARY OPERATOR__________________________________________________________________________________________________________________
Can be used as a one line if...else statement to make your code more concise. Syntax as follows:
<conditional statement> ? <execute if true> : <execute if false>.

You can assign the return value of the expression to a variable.

age = 18
response = age < 17? "You're young" : "Age is just a number"
puts response #=> "Age is just a number"

Here, because the expression evaluated to false, the code after the : was assigned to the variable response. 
Writing this as an if...else statement would be much more verbose. 

age = 18
if age < 17
    response = "You're young"
else
    response = "Age is just a number"
end

puts response #=> "Age is just a number"

However, if the conditional statements are complex, then using an if..else statement would help readability. 
Remember, above all else,  our code needs to be readable and understandable by other people, especially in the development stage.
Our code can always be optimized for efficiency once it's finished and we're moving to a production environment where speed matters.

