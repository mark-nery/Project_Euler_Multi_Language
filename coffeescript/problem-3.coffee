#Project Euler problem 3
#http://projecteuler.net/problem=3
#
#What is the largest prime factor of the number 600851475143 ?


#First guess non optimized solution

n = 600851475143

m = Math.floor (Math.sqrt n)    # if n is composite then it can
                                # be factored into two values, at
                                # least one of which must be less
                                # than or equal to sqrt(n)

m_list = [2 .. m].filter (x) ->
  x % 2 != 0

divis_list = []

for i in m_list
  if n % i is 0
    divis_list.push i

isPrime = (n) ->
  m = Math.floor (Math.sqrt n)

  m_list = [2 .. m].filter (x) ->
    x % 2 != 0

  for i in m_list
    if n % i is 0
      return false
  return true

for i in  divis_list.reverse()
  if  isPrime i
    console.log i               #6587
    break