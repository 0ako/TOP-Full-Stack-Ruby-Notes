# puts - appends a newline to the argument passed in
# puts "hello"

# print - keeps all things on one line
# print "hello"

# gets.chomp
# putc "bae"

# https://www.tutorialspoint.com/ruby/ruby_input_output.htm

# File.new
# You can create a new File object using File.new method for reading, writing, or both - depending on the mode string. File.close method closes the file.

aFile = File.new("filename", "w+")
# Do stuff
aFile.close

# File.open
# File.open method can be used to create a new file object and assign that file object to a file.
# File.open method can be associated with a block, whereas you cannot do the same using the File.new method.

# #sysread method - can be used to read contents of a file. You can open file in any of the modes using method sysread
# aFile = File.new("input.txt", "r")
# if aFile
#     content = aFile.sysread(20)
#     puts content
# else
#     puts "Unable to open file!"
# end
# # This statement outputs the first 20 characters of the file. File pointer will be placed at the 21st character of the file.

# #syswrite method - used to write contents into a file. You NEED to open file in write mode when using method syswrite.
# aFile = File.new("input.txt", "r+")
# if aFile
#     aFile.syswrite("ABCDEF")
# else
#     puts "Unable to open file!"
# end

# #each_byte method belongs to class File. It is always associated with a block
# aFile = File.new("input.txt", "r+")
# if aFile
#     aFile.syswrite("ABCDEF")
#     aFile.each_byte {|ch| putc ch; putc ?. }
# else
#     puts "Unable to open file!"
# end
# # This passes characters one by one to the variable ch and displays them on the screen as follows:
# s. .a. .s.i.m.p.l.e. .t.e.x.t. .f.i.l.e. .f.o.r. .t.e.s.t.i.n.g. .p.u.r.p.o.s.e...
# .
# .

# The class File is a subclass of class IO. One IO class method is IO.readlines.

# #IO.readlines method returns the contents of the file line by line.
# arr = IO.readlines("input.txt")
# puts arr[0]
# puts arr[1]
# each line of input.txt will be an element in the array arr. arr[0] will contain the first line of the file, arr[1] will contain the second line of the file.

# # IO.foreach method also returns output line by line. The difference between readlines and foreach is that foreach is associated with a block.
# # Unlike readlines, foreach does NOT return an array
# IO.foreach("input.txt") {|block| puts block}
# # The code will pass the contents of the file "test" line by line to the variable block, then display the output on the screen.

# # SKIPPED the following part (until "Paused at this point") _______________________________________________________________
# #rename
# File.rename("test1.txt", "test2.txt")

# #delete
# File.delete("test2.txt")

# #chmod
# file = File.new("test.txt", "w")
# file.chmod( 0755 )

# #FILE INQUIRIES
# #exists?
# File.open("File.rb") if File::exists?( "file.rb" )

# #file? : returns true or false
# File.file?( "text.txt" )

# #directory?
# File::directory?( "usr/local/bin" ) #=> true
# File::directory?( "file.rb" ) #=> false

# PAUSED at this point because I realized TOP only asked to read the sections on puts, gets, putc, print ____________________

# https://www.rubyguides.com/2018/10/puts-vs-print/
# puts treats arrays (as well as strings) in a different way

# puts [1,2]
# 1
# 2

# print [1,2]
# [1,2]

# Both print and puts attempt to CONVERT everything into a string by calling to_s
# If we puts an array with nil values, it'll show blank lines
puts [1,nil,nil,2]
# 1


# 2

# p method - shows a more "RAW" version of an object
# Useful for debugging output - when you're looking for things like (normally invisible) newline characters, or want to make sure some value is correct, use p
# puts always returns nil, but p returns the object you pass to it
# e.g.
puts "Ruby is cool" #=> Ruby is cool
p "Ruby is cool" #=> "Ruby is cool"

# Ruby has yet another printing method
# called pp - Pretty printing method.
# Similar to p, but it prints big hashes and arrays in a nicer way. 
