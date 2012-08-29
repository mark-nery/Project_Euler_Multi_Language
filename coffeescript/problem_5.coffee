# http://projecteuler.net/problem=5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# initial solution

evenlyDivisible = (x , n) ->
 for i in [2 .. n]
   if (x % i) != 0
     return false
 return true

smallestEvenDivisible = (n) ->
 divisible = n
 while (! evenlyDivisible divisible , n)
   divisible += n
 return divisible

console.log (smallestEvenDivisible 20)  #232792560