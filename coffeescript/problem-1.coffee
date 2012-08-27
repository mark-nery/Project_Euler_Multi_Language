#Problem 1 http://projecteuler.net/problem=1
#Find the sum of all the multiples of 3 or 5 below 1000.

list = [1..999].filter (x) -> x % 3 == 0 or x % 5 == 0
sum = list.reduce (x,y) -> x + y 

alert(sum) #233168