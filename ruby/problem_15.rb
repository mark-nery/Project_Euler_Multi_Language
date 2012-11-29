def fact(n)
  (1..n).inject(:*)
end

def choose(n , k)
  fact(n) / (fact(k) * fact(n - k))
end

puts "#{choose(40,20)} different paths"
