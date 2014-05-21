# What is the 10001st prime number?


def find_ordinal_prime(ordinal)
  primes = [2]

  i = 2
  while primes.length != ordinal
    if is_prime?(i)
      primes << i
      i += 1
    else
      i += 1
    end
  end
  puts primes.last

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

find_ordinal_prime(10001)