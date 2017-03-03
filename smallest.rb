# Level: 5kyu
# Instructions
# You have a positive number n consisting of digits. You can do at most one operation: Choosing the index of a digit in the number, remove this digit at that index and insert it back to another place in the number.
#
# Doing so, find the smallest number you can get.
#
# Task:
#
# Return an array with
#
# 1) the smallest number you got
# 2) the index i of the digit d you took, i as small as possible
# 3) the index j (as small as possible) where you insert this digit d to have the smallest number.

def smallest(n)
  smallest = n
  digits = n.to_s.split("")
  solution = []
  i = 0
  while i < digits.length
    digit = digits[i]
    j = 0
    while j < digits.length
      test_digits = n.to_s.split("")
      test_digits.delete_at(i)
      test_digits.insert(j, digit)
      if test_digits.join.to_i < smallest
        smallest = test_digits.join.to_i
        solution = [smallest, i, j]
      end
      j += 1
    end
    i += 1
  end
  solution
end
