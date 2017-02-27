# Level: 6kyu
# Instructions
# Given an array, find the int that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  seq.sort!
  looking = true
  while looking
    if seq[0] == seq[1]
      seq.shift(2)
    else
      looking = false
      return seq[0]
    end
  end
end
