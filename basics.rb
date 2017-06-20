# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.
#
# Just as you did with Javascript, try these, both with integers and floats:
#
# Add, subtract, multiply and divide some numbers any combination of numbers
# Find the remainder of dividing two numbers using the modulo operator (%)
# Divide a number by 0
# Divide 0 by 0

#integers
2 + 1 #3
# All of these return 3.0
2.0 + 1
2.0 + 1.0
2 + 1.0
#All of these return 1.0
2.0-1
2-1.0
2.0-1.0
#Multiplication
2*3 #6
#All of these return 6.0
2.0*3.0
2*3.0
2.0*3
#Division
6/2 #3
6/2.0 #3.0
6.0/2 #3.0
6.0/2.0 #3.0
2/6 #returns 0 since you use integers.
2.0/6 || 2/6.0 || 2.0/6.0 #all return about one third, as expected. You need at least one of the numbers toi be a float for this to return the expected result
10/0 #Returns an error. Could use this to intentonally stop the program from running
10.0/0 #Infinity
10/0.0 #Infinity
10.0/0.0 #Infinity
0/0 #Still returns divide by zero error
0/0.0 || 0.0/0 || 0.0/0.0 #all return NaN
#Mods
6%4 #2
6%4.0 || 6.0%4 #2.0
2%6 #Returns 2, since 2 minus 2 is zero, and 6 divides 0.
4%6 #Returns 4, since this becomes  0 and 4 divides 0.

# Variables Challenge
#
# Here are a few exercises for you to practice using variables:
#
# Set a variable called my_favorite_number equal to your favorite number.
# Calculate what your favorite number divided by 2 is.
# Set another variable called somones_favorite equal to 13
# Change the value of someones_favorite to 7
# Subtract your favorite number from someones
# Change the value of my favorite number to be 26 times its current value

my_favorite_number = 8
puts my_favorite_number/2
someones_favorite = 13
someones_favorite = 7
puts someones_favorite - my_favorite_number
my_favorite_number = my_favorite_number * 26

my_favorite_number_2 = (1.0+(5.0)**(1.0/2.0))/2.0
puts my_favorite_number_2/2
someones_favorite = 13
someones_favorite = 7
puts someones_favorite - my_favorite_number_2
my_favorite_number_2 * my_favorite_number_2

# Strings Challenge
#
# For this exercise, try out some of the Ruby string methods for yourself.
# .upcase
# .reverse
# .include?
# capitalize
# create a variable and put it into a string using string interpolation

my_string = "this string will have methods applied to it!"
puts my_string.upcase
puts my_string.reverse
puts my_string.include?("this") #Returns true
puts my_string.capitalize #This will also lower case all other letters in the string
puts "Here's my first string: #{my_string}"


puts "this is really important".upcase
name = "Amy"
puts name.include?("m")
name = "joe desoto"
puts name.capitalize
puts "My coding partner is #{name}"

# Arrays Challenge
#
# Read the introductory information about the comprehensive set of Array features Ruby has.
#
# Create an array with ten of your favorite movies
# From that array, extract your top 3 movies in a new array (Hint: .select)
# Find an expression that tells you how many elements are in the array
# Reverse an array, try out slices, how to rotate them, and how to get a random element from the array



amy_joe_favorite_movies = ["Room with a View", "Fight Club", "Clueless", "Zoolander", "Full Metal Jacket", "Tombstone", "The Big Lebowski", "LA Confidential", "The Prestige", "The Sound of Music"]
amy_joe_favorite_movies.select { |tops| tops =~ /The/ } #This returned all movies that started with The
#select is supposed to be for numbers
puts amy_joe_favorite_movies.length
puts amy_joe_favorite_movies.reverse
amy_joe_favorite_movies[3] #this gets the fourth movie Zoolander
amy_joe_favorite_movies[0..4] #this gets 5 elements INCLUDING the fourth index Full Metal Jacket
amy_joe_favorite_movies[0...4] #this gets 4 elements EXCLUDING the fourth index Full Metal Jacket
amy_joe_favorite_movies.slice(2) #Gets the third element at the second index of the array
random = rand(amy_joe_favorite_movies.length)
amy_joe_favorite_movies.slice(rand(amy_joe_favorite_movies.length)) #Gets the third element at the second index of the array
amy_joe_favorite_movies.slice(random) #This does give a random movie, but since random is initialized only once and stored, it won't give a new random movie each time. Using the actual rand method inside slice will give a random movie each time.

amy_joe_favorite_movies.rotate


Challenges:

Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.
Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
Write a method which calls another method, then uses its return value.
Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

name = "Joe and Amy"
y = [0,2,5,10]
y.each { |item| puts item+1 } # if it's on one line you can use curly braces instead of do end

y.each do           #this does the same as above
  |element|
  puts element + 1
end

x=10
x.times do
  puts name
end

y.map {|num| num * 10} #map is for an array, doesn't store permanently
y.map! {|num| num * 10} #DOES change the y array permanently


x=20  #prints 1 to 20
y=0
x.times do
  puts y=y+1
end

a = 0 #this also prints 1 to 20
20.times { puts a+=1 }

x=20  #decrement from 20 to 1
x.times do
  puts x
  x=x-1
end

a = 21 #this also prints 20 to 1
20.times { puts a-=1 }

#Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def num_test
  puts "Please input a number"
  number = gets
  if number.to_i.between?(1,10)
    puts "Number is valid"
  else
    puts "Invalid number!"
  end
end

Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz

def fizzbuzz
  a = 0
  100.times do
      a+=1
      if a % 15 == 0
        puts "#{a} FizzBuzz"
      elsif a % 3 == 0
        puts "#{a} Fizz"
      elsif a % 5 == 0
        puts "#{a} Buzz"
      else
        puts a
    end #if
  end #do
end #function

Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

def sum_these_numbers a, b
  puts "The sum of your numbers is: #{a + b}"
end

Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.

def is_even num
  if num % 2 == 0
    true
  else
    false
  end
end


#Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.

words = ["This", "is", "an", "entire", "array", "of", "words"]
words.each do
  |word|
  puts word.capitalize
end


Write a method which calls another method, then uses its return value.

# year = 2017
def leap num
  if num % 4 == 0
    true
  else
    false
  end
end

def check_leap_year year  #need to pass in year or it won't work! doesn't see global variable if you don't pass it in
  if leap year
    puts "It's leap year!"
  else
    puts "It's a regular old year"
  end
end


# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.

def valid_date
  mon_30 = [4, 6, 9, 11]
  puts "Please enter a month. Example: For February, 2"
  month = gets.to_i
  if !month.between?(1,12)
      puts "The month you typed was incorrrect"
      return false
  end #nested if

  puts "Please enter a year."
  year = gets.to_i
  if !year.between?(1,2017)
    puts "The year is invalid"
    return false
  end #nested if

  puts "Please enter a numerical day of the month."
  day = gets.to_i
  if mon_30.include?(month) #this checks for one of the months that has 30 days. 4, 6, 9, or 11
    if !day.between?(1,30)
      puts "Invalid day for this month! Should be between 1 and 30."
      return false
    else
      puts "This is a valid date in history!"
      return true
    end #nested if

  elsif month == 2 && year % 4 == 0
    # if year % 4 == 0
    if !day.between?(1,28)
      puts "Invalid day for February! This is a leap year February, and must be between 1 and 28."
      return false
    else
      puts "This is a valid date in history!"
      return true
    end #nested if

  elsif month == 2
    if !day.between?(1,29)
      puts "Invalid day for February! This is a leap year February, and must be between 1 and 29."
      return false
    else
      puts "This is a valid date in history!"
      return true
    end #nested if

  else
    if !day.between?(1,31)
      puts "Invalid day for this month! Should be between 1 and 31."
      return false
    end #ends nested if
    puts "This is a valid date in history!"
    return true
  end #ends the larger if
end #end the function


# Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).
#
# rock beats Scissors
# scissors beats Paper
# paper beats rock

def rps_game

puts "Player 1: pick Rock, Paper or Scissors"
player1 = gets.chomp
puts "player 1 chose #{player1}"

puts "Player 2: pick Rock, Paper or Scissors"
player2 = gets.chomp
puts "player 2 chose #{player2}"


  if player1 == "rock" && player2 == "scissors"
    puts "Player 1 wins!"

  elsif player2 == "rock" && player1 == "scissors"
    puts "Player 1 wins!"

  elsif player1 == "scissors" && player2 == "paper"
  puts "Player 1 wins!"


  elsif player2 == "scissors" && player1 == "paper"
  puts "Player 2 wins!"


  elsif player1 == "paper" && player2 == "rock"
  puts "Player 1 wins!"


  elsif player2 == "paper" && player1 == "rock"
  puts "Player 2 wins!"

  else
    puts "It's a tie!"
  end #if else

end #end rps_game method





Password Checker Challenge
Challenges

You are writing the user registration page for a secure web site.
On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

User ID and password cannot be the same
User ID and password have to be at least six characters long
Password has to contain at least one of: !#$
User ID cannot contain the following characters: !#$ and space
Password cannot contain "password" in a capitalization
Proceed as follows:

Challenge: Write a function called same that takes a user ID and a password, and returns true if they are, and false otherwise.
Tests:

same("joe", "joe") -> true
same("joe", "joe1") -> false


Challenge: Write a function called long_enough that checks whether a String is at least six characters long, and returns true if it is, and false otherwise.
Tests:

long_enough("12345") -> false
long_enough("123456") -> true


Challenge Write a function called does_not_contain_special which checks to see if !, #, $ is not contained in a given String.
Tests:

does_not_contain_special("Hello Friend") -> true
does_not_contain_special("A#C") -> false
does_not_contain_special("A!C") -> false
does_not_contain_special("A$C") -> false

Challenge Write a method called contains_special which checks to see if !, #, $ is contained in a given String.
Tests:

contains_special("Hello Friend") -> false
contains_special("A#C") -> true
contains_special("A!C") -> true
contains_special("A$C") -> true

Challenge Write a method that inputs user ID and password from the user, and then tells the user if the they are acceptable.
Write a main method called validate_password that:

First lets a user input both user ID and password,
Then use the methods above to evaluate if the user ID and password combination is acceptable or not
Tells user what the result is.
Stretch Goal

Password has to contain at least one digit Task: Write a function using basic functions on String to see if a given String contains contains one of "0","1", "2", "9". Tests:
has_digit("abc") -> false
has_digit("a1c") -> true
Super Stretch Goal

Password has to contain a lower and an uppercase letter. Tests:
has_upper_and_lowercase("abc") -> false
has_upper_and_lowercase("aBc") -> true
has_upper_and_lowercase("123") -> false


#
# User ID and password cannot be the same
# User ID and password have to be at least six characters long
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ and space
# Password cannot contain "password" in a capitalization
# Proceed as follows:
#
# Challenge: Write a function called same that takes a user ID and a password, and returns true if they are, and false otherwise.
# Tests:
#
# same("joe", "joe") -> true
# same("joe", "joe1") -> false


# def same
#   puts "Please enter a user ID."
#   user_id = gets.chomp
#   puts "Please enter a password, which can't be the same as your user ID"
#   pass = gets.chomp
#   if pass == user_id
#     puts "Invalid password! Password can't be the same as user ID."
#     return true
#   else
#     return false
#   end
# end #ends function

def same (user_id, pass)
  if pass == user_id
    puts "Invalid password! Password can't be the same as user ID."
    return true
  else
    return false
  end
end #ends function


Challenge: Write a function called long_enough that checks whether a String is at least six characters long, and returns true if it is, and false otherwise.
Tests:

long_enough("12345") -> false
long_enough("123456") -> true


def long_enough (string)
  if string.length >= 6
    return true
  else
    return false
  end #end if
end #end method

# Challenge Write a function called does_not_contain_special which checks to see if !, #, $ is not contained in a given String.
# Tests:
#
# does_not_contain_special("Hello Friend") -> true
# does_not_contain_special("A#C") -> false
# does_not_contain_special("A!C") -> false
# does_not_contain_special("A$C") -> false

def does_not_contain_special string
  if !string.include?("!") && !string.include?("#") && !string.include?("$")
    puts "#{string} doesn't contain special characters."
    return false
  else
    puts "#{string} does contain special characters!"
    return true
  end
end #ends function

def main

  puts "Please enter a user ID."
  user_id = gets.chomp
  puts "Please enter a password, which can't be the same as your user ID"
  pass = gets.chomp

    if (same user_id, pass)
    main                  #if password is the same as user ID call main
    else
    puts "you're okay"
    end

end
