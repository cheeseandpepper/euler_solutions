# some solutions to fizzbuzz?


# first way
def fizzbuzz(range)
  range.collect do |num|
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 3 == 0
      puts "Fizz"
    else
      puts num

    end
  end
end

#fizzbuzz(1..100)



# second way

def fizzbuzz2(range)

  range.each do |num|
    a = "Fizz" if num % 3 == 0
    b = "Buzz" if num % 5 == 0
    puts a if a and not b
    puts b if b and not a
    puts a + b if a && b 
    puts num if (num % 3 != 0 && num % 5 != 0)
  end
end

#fizzbuzz2(1..100)


# third way


def fizzbuzz3(range)
  range.each do |num|
    puts "FizzBuzz" if num.fizz? && num.buzz?
    puts "Fizz"     if num.fizz? and not num.buzz?
    puts "Buzz"     if num.buzz? and not num.fizz?
    
    puts num unless num.fizz? || num.buzz?
  end
end

public
def fizz?
  self % 3 == 0
end

def buzz?
  self % 5 == 0
end

#fizzbuzz3(1..100)

# fourth way

def fizzbuzz4(range)
  range.each do |num|
    x  = ""
    x += "Fizz" if num % 3 == 0
    x += "Buzz" if num % 5 == 0
    
    puts x == "" ? num : x
  end
end

fizzbuzz4(1..100)