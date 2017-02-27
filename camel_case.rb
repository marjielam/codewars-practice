# Level: 5kyu
# Instructions
# Complete the solution so that the function will break up camel casing, using a space between words.

def solution(string)
  words = []
  current_word = ""
  string.chars.each_with_index do |c, index|
    if c.upcase == c
      words << current_word
      current_word = c
    else
      current_word += c
    end
  end
  words << current_word
  words.join(" ")
end
