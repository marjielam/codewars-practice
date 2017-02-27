# Level: 4kyu
# Instructions
#
# Find the length of the longest substring in the given string s that is the same in reverse.
#
# As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.
#
# If the length of the input string is 0, return value must be 0.

def longest_palindrome s
  if s.length == 0
    return 0
  elsif s.length == 1
    return 1
  else
    chars = s.split(//)
    longest = chars[0]
    string_length = s.length
    i = 0

    while i < string_length do
      test_longest = chars[i]
      j = i + 1
      while j < string_length do
        test_longest += chars[j]
        j += 1
        if is_palindrome(test_longest) && test_longest.length > longest.length
          longest = test_longest
        end
      end
      i += 1
    end
  end
  longest.length
end

def is_palindrome(s)
  s == s.reverse
end
