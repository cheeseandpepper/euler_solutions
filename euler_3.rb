# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


def is_prime?(num)
  n     = 2
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


def largest_prime_factor(number)

  i     = Math.sqrt(number).truncate
  found = false

  while found == false && i > 0
    if number % i == 0 && is_prime?(i)
      puts i
      return i
    else
      i -= 1
    end
  end
end


largest_prime_factor(600851475143)
