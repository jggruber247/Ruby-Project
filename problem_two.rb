class PalindromeChecker
=begin
-------------------------------------------------------------------
Garrett Gruber
CSCI 4200 DB
Dr. Abi Salimi

Purpose:
This program takes a string of characters as input.
The program then outputs:
  -The string
  -The string's reverse
  -Whether or not the string is a palindrome
-------------------------------------------------------------------
=end

#MAIN CODE BLOCK
print 'Enter a string: '
word = gets  #gets the input from the string 
word = word.strip  #removes the trailing whitespace from the string
output1 = 'Your string: "' + word + '"'  
puts output1
drow = word.reverse   #reverses the string
output2 = 'Your string reversed: "' + drow + '"'
puts output2
sword = word.gsub(/\s+/, "") #Removes all whitespace from the strings
                              #so only letter characters are compared
drows = drow.gsub(/\s+/, "") #This will allow multi-word palindromes
                              #to be recognized, like "Yo banana boy"
sword.downcase!  #sets all letters to lowercase for comparison
drows.downcase!
if sword.eql?(drows)   #If the original string is equal to the reverse...
  output3 = '"' + word + '" is a palindrome.'   #...It's a palindrome
else
  output3 = '"' + word + '" is not a palindrome.'
end
puts output3
end