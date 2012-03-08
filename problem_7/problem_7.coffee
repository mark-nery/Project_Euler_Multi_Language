#Problem-7
#http://projecteuler.net/problem=7
#initial solution
#
# What is the 10 001st prime number?

findNthPrime = (n) ->
 primeCount = 0
 lastPrime = 0
 i = 0
 while primeCount < n
   if isPrime i
     lastPrime = i
     primeCount++
   i++
 return lastPrime

isPrime = (n) ->
 if n is 0 or n is 1
   return false
 if n is 2 or n is 3
   return true
 if n % 2 is 0 or n % 3 is 0
   return false

 m = Math.floor (Math.sqrt n)
 m_list = [2 .. m].filter (x) ->
   x % 2 != 0

 for i in m_list
   if n % i is 0
     return false
 return true

console.log (findNthPrime 10001)  #104743