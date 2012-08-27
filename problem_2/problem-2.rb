#Project Euler problem 2 
#By considering the terms in the Fibonacci sequence whose values do
#not exceed four million, find the sum of the even-valued terms.

fibs = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b , a + b
  end
end

puts fibs.take_while{ |n| n < 4000000 }.
  find_all{ |n| n.even? }.
  inject(0){ |sum , n| sum + n}
