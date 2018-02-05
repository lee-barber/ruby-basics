# # Basic Ruby Functions

# # Goal:

# # Build Familiarity with Ruby syntax and conventions.

# # Assignment:

# # Create the following functions:

# # Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it

def phrase(arg)
	puts arg + "only in America."
end

phrase("The Super Bowl is ")

# # Create a function that takes two arguments, adds them together and returns their value split in 3

def split(arg1, arg2)
	puts (arg1 + arg2)/3
end

split(4.0, 13.0)

# # Create a hash that holds information about you. Include firstName, lastName, birthday and an array of interests. Print each property out to the terminal.

person = Hash.new 

person[:firstName] = "Lee"
person[:lastName] = "Barber"
person[:birthday] = "June 19"
person[:interests] = "Motorcycles"

puts person[:firstName]
puts person[:lastName]
puts person[:birthday]
puts person[:interests]

# #  Declare a function that, depending upon which virtual "door" was entered, tells the user they've received a different "prize" in an alert. Try running it after it has been declared a few times with each door option.

puts "Choose a door: 1, 2, or 3."

number = gets.chomp.to_i

if number == 1
	puts "You won a car."
elsif number == 2
	puts "You won $10,000."
elsif number == 3
	puts "You won a vacation trip."
end

# # Create an array that contains various names. Use a loop to print out the names, followed by 'is my friend'. Like so: Jake is my friend John is my friend Samantha is my friend Billy is my friend

# create an array with an arbitrary list of names
names = ["George", "John", "Jake", "Luke"]

# create a for loop that starts a 0 ('i') and goes through the variable "names"
for i in names
	# print the result of each index in the array concatonated with the string " is my friend"
	puts i + " is my friend"
# closes/ends the for loop
end

# # Create a function to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max function.

	# create a variable called "array" and assigns it to an array of numbers
	array = [1,2,3,4,5]
	# create a variable called "max" and assigns its value to the array at it's current index
	max = array[0]
	# in JS, this Ruby for loop would look like this:
	# for(var i=0;i<array.length;i++)
	# this syntax creates a for loop that starts and 'i' and cycles through "array"
	# the "for i in array" syntax is very common Ruby for loop syntax
	for i in array
		# if the number at it's current index is greater than the variable max, then...
		if i > max
			# variable "max" is assigned to the current index
			max = i
		# this "end" closes the if statement
		end
	# this "end" closes the for loop
	end

puts max

# # Create a function that takes two arguments - both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values. For example, when these two arrays are supplied as arguments:

#     [:toyota, :tesla]
#     ["Prius", "Model S"]

# they should return a hash, like so:
#     {toyota: "Prius", tesla: "Model S"}
	
	array = [:toyota, :tesla, :honda]
	array2 = ["Prius", "Model S", 'civic']

def cars(x, y)
	hash = {}
	for i in 0..x.length-1
		hash[x[i]] = y[i]
	end
	puts hash
end

cars(array, array2)

hash = {}

hash[:model] = 'Totoya'
hash[:year] = 2011

puts hash[:model]


# # Write a program that prints the numbers from 1 to 100, except:
# # for multiples of three print "Fizz" instead of the number for multiples of five print "Buzz"
# # Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

# sets the integer to start at 0
i = 0
# while the integer is < 0...
while i < 100
	# if the integer has a remainder of 0 after being divided by 5 AND has a remainder of 0 after being divided by 3...
    if i % 5 == 0 && i % 3 == 0
    	# print "FizzBuzz"
        puts "FizzBuzz"
        # otherwise, if the integer has a remainder of 0 after being divided by 5...
    	elsif i % 5 == 0
      	# print "Buzz"
        puts "Buzz"
        # otherwise, if the integer has a remainder of 0 after being divided by 3...
    	elsif i % 3 == 0
    	# print Fizz
        puts "Fizz"
        # otherwise...
    	else
    	# print the current integer	
        puts i
    # ends the if statement
    end
    # sets the interval of the loop to add one after each iteration
    i += 1
# ends the while loop
end

# #  Create a while loop that "sings" the classic song "99 Bottles of Root Beer on the Wall"  
# #  . The code it outputs to the console should look similar to this:  
# #  •   "99 bottles of root beer on the wall, 99 bottles of root beer...take one down, pass it around 98 bottles of root beer on the wall, 98 bottles of root beer on the wall, 98 bottles of root beer...take one down, pass it around 97 bottles of root beer on the wall," etc., all the way to 0 bottles.

# assigns the variable "bottles" to the integer 99
bottles = 99

	# creates a while loop
	# while the variable bottles is not assigned to the integer 0...
	while bottles != 0

	# print the variable "bottles" as a string concatonated with the other strings	
	puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottless of beer.'

	# assigns the variable bottles to the variable bottles and subtracts 1
	bottles -= 1

# prints the string concatonated with the new value of bottles (to a string) and concatonates with another string
puts 'Take one and pass it around, ' + bottles.to_s + ' of beer on the wall.'

end


# # Grading Criteria:

# # Build Only in America function in Ruby, with no errors

# # Build FizzBuzz in Ruby, with no errors

# # Build Nested Arrays function in Ruby, with no errors

# # Code is well commented

# # The syntax is correct and the code is indented properly.

# # All scripts should output the expected result.

# # Ruby's built-in .max function is not used