(1..100).inject(:*).to_s.each_char.map {|c| c.to_i}.inject(:+)
