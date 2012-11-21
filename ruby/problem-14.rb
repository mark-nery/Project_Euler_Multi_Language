
def odd_function(n)
  (3 * n) + 1
end

def even_function(n)
  n / 2
end

def get_number(n)
  n.odd? ? odd_function(n) : even_function(n)
end

def chain_length(i,size=1)
  i == 1 ? (return size) : chain_length(get_number(i),size += 1)
end

def problem_14
  number_of_terms = 0
  number = 0
  (1..999999).each do |n|
   new_term_length = chain_length(n) 
    if new_term_length > number_of_terms
      number = n 
      number_of_terms = new_term_length
    end
  end
  
  puts "largest chain with starting number under 1 million is #{number}"
end

problem_14
