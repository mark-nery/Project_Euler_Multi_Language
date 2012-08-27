require_relative 'problem_9'

#tests for building sets of squares

if [] == squares.take(0)
  puts "PASS less than 1 produces the right set "
else
  puts "FAIL square set of n = 0 is #{squares.take(0)}"
end

if [1] == squares.take(1)
  puts "PASS 1 produces the right set "
else
  puts "FAIL square set of n = 1 is #{squares.take(1)}"
end

if [1,4,9,16] == squares.take(4)
  puts "PASS greater than 2 produces the right set "
else
  puts "FAIL square set of n = 25 is  #{squares.take(4)}"
end

# test for pythagorean triplet

if pythagorean?(3,4,5)
  puts "PASS pythagorean"
else
  puts "FAIL pythagorean"
end

if [1,4,9,16] == squares.take_while {|n| n < 22 }
  puts "PASS takewhile"
else
  puts "FAIL takewhile"
end

  
