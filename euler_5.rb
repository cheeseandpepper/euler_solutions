# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


### WAY TOO SLOW!!!
def smallest_common_multiple(numbers)
  i = numbers.max
  until numbers.all? { |n| i % n == 0}
    puts i
    i += 20
  end

  puts i

end

smallest_common_multiple(1..20)

def get_prime_factors(num)
  i = 3
  prime_factors = []
    if number % i == 0 && is_prime?(i)
      prime_factors << i
      return i
    else
      i -= 1
      
    end

  

end


def is_prime?(num)
  n = 2
  value = false
  while n < num
    if num % n == 0
      value = false
      return value
    else
      value = true
      n += 1
    end
  end
  value
end