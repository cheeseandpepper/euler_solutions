# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def find_max_sum_in_fib_sequence(max)
  sum = 2
  term1 = 1
  term2 = 2
  term3 = term1 + term2

  while term2 < max
    sum += term3 if term3 % 2 == 0
    term1 = term2
    term2 = term3
    term3 = term1 + term2
  end

  puts sum

end

find_max_sum_in_fib_sequence(4000000)