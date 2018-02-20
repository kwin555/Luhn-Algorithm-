# Luhn-Algorithm- 
Uses the luhn algorithm to verify credit cards
First, the code convert the number string, uses ruby's bulit in to_s method to convert my int to a string,the uses split('') to split my string into individual numbers
Next, then I convert each element in the array into numbers.
Then I double every other number.
Then I check if each number is greater than or equal to 10. If the number is greater than or equal to 10, I subtract 9 from it.
Next, I sum up all the elements in the array.
Lastly, I output if the sum is divisible by 10 or not.
