# Level: 5kyu
# Instructions
# Move the first letter of each word to the end of it, then add 'ay' to the end of the word.

def pig_it text
  words = text.split
  new_text = ""
  words.each_with_index do |word, index|
    if word.match(/\W/)
      new_text += word
    elsif index == words.length - 1
      new_text += word[1..word.length - 1] + word[0] + "ay"
    else
      new_text += word[1..word.length - 1] + word[0] + "ay "
    end
  end
  new_text
end
