describe 'sumOfSquares', ->
 it 'squares each member of [1 .. n]
     then adds them', ->
       expect(sumOfSquares 10).toBe 385

describe 'squareOfSum',->
 it 'squares the sum of [1 .. n]',->
   expect(squareOfSum 10).toBe 3025

describe 'sumMinusSquares',->
 it ' subtracts the square of sums of [1 .. n]
      from the sum of squares of [ 1 .. n]', ->
        expect(sumMinusSquares 10).toBe 2640