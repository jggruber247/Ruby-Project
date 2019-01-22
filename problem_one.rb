class ProblemOne
=begin
-------------------------------------------------------------------
Garrett Gruber
CSCI 4200 DB
Dr. Abi Salimi

Purpose:
This program takes a list of integer values as input.
  The first integer, "listlen" is the length of the list minus 1. 
  "listlen" must be less than 100, and is followed by listlen
  integer values.
The program then outputs: 
  -the list
  -the number of items on the list
  -the number of input values greater than the average of all 
   input values
-------------------------------------------------------------------
=end

#MAIN CODE BLOCK
puts "Enter number of integers followed by the integer values:"
list = gets  #Gets the input from the console as a string
list = list.chomp #Removes the newline character from the string
arr = Array.new  #Initializing an array to handle the integers
arr = list.split(' ').map{|c| Integer(c) }  #Seperates the numbers by space, converts 
                                             #each number to an integer, and puts the 
                                             #integers into the array.
listlen = arr.shift #Removes the first value in the array and assigns it to listlen
if listlen < 100  #Checking if the list is less than 100 elements long
  puts "Number of items on the list:"
  puts listlen
  puts "The list:"
  
  #Prints the elements of the array seperated by spaces
  arr.each do |c|
    print c
    print " "
  end
  
  puts 
  sum = arr.inject(0.0){ |total, val| total + val }  #Finds the sum of the elements in the array
  avg =  sum / listlen  #Gets the average by dividing the sum by listlen
  avg = (avg*100).round/100.0  #Rounds the average to two decimal places
  puts "The average:"
  puts avg
  
  #Looks at each element in the array, and if greater than the average adds 1 to cnt
  cnt = 0;
  arr.each do |c|   
    if c > avg
      cnt = cnt + 1
    end
  end
  
  puts "Number of values greater than average:"
  puts cnt
else
  puts "ERROR: First integer not less than 100."
end
end