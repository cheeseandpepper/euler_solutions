# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_from_product

  max = 999
  min = 100
  product = 0

  max.downto(min).each do |a|
    max.downto(min).each do |b|
      product = a*b if is_palindrome?(a*b) && a*b > product
    end
  end

puts product

end

def is_palindrome?(num)
  num.to_s == num.to_s.reverse && num.to_s != 0
end

largest_palindrome_from_product