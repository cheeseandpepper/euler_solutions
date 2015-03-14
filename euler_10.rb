# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def sum_of_primes_below(number)
  start_time    = Time.now
  primes        = Array.new(number, true)
  prime_numbers = []
  (0..number).each_with_index.collect do |prime_value, i|
    next if i == 0 || i == 1 || primes[i] == false
    prime_numbers << i 
    ((i+i)..number).step(i) { |i| primes[i] = false }
  end
  
  puts prime_numbers.inject(:+)
  end_time = Time.now
  puts "Completed in #{end_time - start_time} seconds"
end

sum_of_primes_below(2000000)
