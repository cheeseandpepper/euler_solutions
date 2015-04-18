# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# this one was not bad. First I had to look up the formula for pythagorean triplets because I don't remember 8th grade.
# then I first had y and z incrimenting with each loop but that only generates equallateral triangles and not isocoles.
# so it took 2 separate loops to incriment z all the way for each y incriment. it's fast but not sure how it scales.
# max is a crude educated guess particular to this problem. if max is 333 then at best 334 and 335 would be B and C, and that's over 1000. its there to prevent a run-away formula.

def pythagorean_triplet(sum)
  y   = 1
  z   = 2
  max = (sum / 3).truncate

  while y < max
    while z < max
      a = (z*z) - (y*y)
      b = 2 * (y * z)
      c = (z*z) + (y*y)
      if a + b + c == sum && (a*a + b*b) == c*c
        puts "FOUND IT"
        puts "#{a}, #{b}, #{c}"
        return a, b, c
      else
        z += 1
      end
    end
    z  = 1
    y += 1
  end 
end

pythagorean_triplet(1000)
