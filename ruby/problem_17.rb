ones = ["one","two","three","four","five","six","seven","eight","nine"]
teens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
tens = ["twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"]

lame = []
tens.each do |t|
  lame << t
  ones.each {|o| lame << t + o}
end

[ones,teens,lame].each {|c| puts c}

#puts ones[0..4].join.length


