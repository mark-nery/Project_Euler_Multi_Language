#Project Euler problem 3
#http://projecteuler.net/problem=3
#
#What is the largest prime factor of the number 600851475143 ?


#Optimized Solution


n = 600851475143

if n % 2 is 0
  n = n / 2
  last_factor = 2
  while n % 2 is 0
    n = n / 2
else
  last_factor = 1

factor = 3
max_factor = (Math.floor( Math.sqrt n))

while (n > 1 and factor <= max_factor)
  if n % factor is 0
    n = n / factor
    last_factor  = factor
    while n % factor is 0
      n = n / factor
      max_factor = (Math.floor( Math.sqrt n))
  factor += 2

if n is 1
  console.log last_factor
else
  console.log n