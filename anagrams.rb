# Level: 5kyu
# Instructions
# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none.

def anagrams(word, words)
  anagrams = words.reject{ |test_word| !is_anagram(word, test_word) }
end

def is_anagram(word1, word2)
  if word1.length != word2.length
    return false
  else
    temp_word = word2 + ""
    word1.split("").each do |char|
      if temp_word.index(char).nil?
        return false
      else
        temp_word[temp_word.index(char)] = ""
      end
    end
    true
  end
end
