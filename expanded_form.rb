# Level: 6kyu
# Instructions
# You will be given a number and you will need to return it as a string in Expanded Form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.

def expanded_form(num)
  expanded_numbers = []
  scale = 10
  new_num = num
  while new_num > scale
    remainder = new_num % scale
    expanded_numbers.unshift(remainder)
    new_num -= remainder
    scale *= 10
  end
  expanded_string = "#{new_num}"
  expanded_numbers.each do |number|
    if number != 0
      expanded_string += " + #{number}"
    end
  end
  expanded_string
end
