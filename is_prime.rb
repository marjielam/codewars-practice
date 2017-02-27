# Level: 6kyu
# Instructions
# Define a function isPrime that takes one integer argument and returns true or false depending on if the integer is a prime.
#
# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

def isPrime(num)
  positive_num = num.abs
  if positive_num < 2
    return false
  else
    i = 2
    while i < positive_num
      if positive_num % i == 0
        return false
      end
      i += 1
    end
    return true
  end
end
