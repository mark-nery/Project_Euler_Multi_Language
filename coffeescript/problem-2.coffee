#Project Euler problem 2 http://projecteuler.net/problem=2
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

limit = 4000000

sum = 0
a = 1
b = 1

while b < limit
  if b % 2 is 0 then sum += b
  h = a + b
  a = b
  b = h

console.log sum #4613732