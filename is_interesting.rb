# Level: 4kyu
# Instructions
# Interesting numbers are 3-or-more digit numbers that meet one or more of the following criteria:
#
## Any digit followed by all zeros: 100, 90000
## Every digit is the same number: 1111
## The digits are sequential, incementing†: 1234
## The digits are sequential, decrementing‡: 4321
## The digits are a palindrome: 1221 or 73837
## The digits match one of the values in the awesomePhrases array

def is_interesting(number, awesome_phrases)
  num_string = number.to_s
  number_inc_one = number + 1
  num_string_plus_one = number_inc_one.to_s
  number_inc_two = number_inc_one + 1
  num_string_plus_two = number_inc_two.to_s

  if number == 98 || number == 99
    return 1
  elsif number < 100
    return 0
  elsif awesome_phrases.include?(number) ||
    trailing_zeros(num_string) ||
    matching_digits(num_string) ||
    incrementing_digits(num_string) ||
    decrementing_digits(num_string) ||
    is_palindrome(num_string)
    return 2
  elsif awesome_phrases.include?(number_inc_one) ||
    trailing_zeros(num_string_plus_one) ||
    matching_digits(num_string_plus_one) ||
    incrementing_digits(num_string_plus_one) ||
    decrementing_digits(num_string_plus_one) ||
    is_palindrome(num_string_plus_one) ||
    awesome_phrases.include?(number_inc_two) ||
    trailing_zeros(num_string_plus_two) ||
    matching_digits(num_string_plus_two) ||
    incrementing_digits(num_string_plus_two) ||
    decrementing_digits(num_string_plus_two) ||
    is_palindrome(num_string_plus_two)
    return 1
  else
    return 0
  end
end

def trailing_zeros(num)
  i = 1
  while i < num.length
    if num[i] != "0"
      return false
    end
    i += 1
  end
  true
end

def matching_digits(num)
  last_char = num[0]
  num.split("").each do |char|
    if char != last_char
      return false
    end
  end
  true
end

def incrementing_digits(num)
  counter = num[0].to_i
  num.split("").each_with_index do |char, index|
    if index > 0
      if char == "0" && counter != 9
        return false
      elsif char != "0" && char.to_i != counter + 1
        return false
      end
      counter += 1
    end
  end
  true
end

def decrementing_digits(num)
  counter = num[0].to_i
  num.split("").each_with_index do |char, index|
    if index > 0
      if char.to_i != counter - 1
        return false
      end
      counter -= 1
    end
  end
  true
end

def is_palindrome(num)
  i = 0
  while i < num.length / 2
    backwards_index = i + 1
    if num[i] != num[-backwards_index]
      return false
    end
    i += 1
  end
  true
end
