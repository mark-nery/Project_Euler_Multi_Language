#Problem 4 http://projecteuler.net/problem=4
#Find the largest palindrome made from the product of two 3-digit numbers.
#initial solution

isPalindrone = (x) ->
 orig = x
 reverse = []
 while x > 10
  reverse.push x % 10
  x = Math.floor x / 10
 reverse.push x
 tens = (Math.pow 10,reverse.length - 1)
 number = 0
 for i in reverse
  number += i * tens
  tens /= 10
 if orig is number
  return true
 else
  return false

largestPalindrone = (n) ->
 list = []
 largest = 0
 for x in [((Math.pow 10,n ) - 1) .. 1]
   for y in [x .. 1]
     if (isPalindrone x * y)
       if (x * y) > largest
         largest = (x * y)
 return largest

console.log largestPalindrone 3  #906609