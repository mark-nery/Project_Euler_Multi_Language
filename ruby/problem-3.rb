
prime_gen = Enumerator.new do |y|
  a = 3
  s = [2,3]
  @prime = true
  
  loop do
    s.each do |i|
      if a % i == 0
        @prime == false
      end      
    end
    puts "prime is #{@prime}"
    if @prime
      y << a
      s << a
    end

    @prime = true
    a += 2
  end
end

puts prime_gen.take(10)
