def sum_square_difference(numbers)
  each_squared  = 0
  total_squared = 0

  numbers.inject(0) do |sum, i|
    each_squared  += i * i
    total_squared += i
  end

  puts (total_squared * total_squared) - each_squared
end

sum_square_difference(1..100)