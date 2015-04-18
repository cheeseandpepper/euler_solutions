# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

require 'pry'

def find_longest_chain_for(max_number)
  start_time         = Time.now
  longest_chain      = 0
  current_chain_size = 1
  
  (1..max_number).each do |num|
    current_chain_size = collatz_sequence_for([num], num)
    longest_chain = current_chain_size if current_chain_size > longest_chain
  end
  
  end_time = Time.now
  puts longest_chain
  puts "Completed in #{end_time - start_time} seconds."
end

def collatz_sequence_for(sequence=[], number)
  if number.even?
    number = number / 2
  else
    number = (number * 3) + 1
  end
  
  sequence << number
  collatz_sequence_for(sequence, number) if number != 1
  
  return sequence.count
end

find_longest_chain(1000000)
