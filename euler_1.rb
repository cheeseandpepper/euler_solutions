# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


def sum_of_multiples(multiples_array, max)
  valid_multiples = []
  multiples_array.each_with_index do |num, i|
    while i < max
      valid_multiples << i if i % num == 0
      i += 1
    end
  end
  puts valid_multiples.uniq.inject(&:+)
end

sum_of_multiples([3, 5], 1000)
