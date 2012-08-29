# http://projecteuler.net/problem=6
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
# initial solution

sumOfSquares = (n) ->
 list = [1..n].map (i) -> i * i
 sum = list.reduce (t ,s) -> t + s
 return sum

squareOfSum = (n) ->
 sum = [1..n].reduce (t,s) -> t + s
 return sum * sum

sumMinusSquares = (n) ->
 return (squareOfSum n) - (sumOfSquares n)

console.log (sumMinusSquares 100)  #25164150