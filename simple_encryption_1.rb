# Level: 6kyu
# Instructions
# For building the encrypted string:
# Take every 2nd char from the string, then the other chars, that are not every 2nd char, and concat them as new String.
# Do this n times!

def encrypt(text, n)
  if text.empty? || text.nil? || n <= 0
    return text
  else
    old_string = text
    new_string = ""
    n.times do
      new_string = ""
      i = 1
      while i < old_string.length
        new_string += old_string[i]
        old_string[i] = ""
        i += 1
      end
      new_string += old_string
      old_string = new_string
    end
    new_string
  end
end

def decrypt(encrypted_text, n)
  if encrypted_text.empty? || encrypted_text.nil? || n <= 0
    return encrypted_text
  else
    length = encrypted_text.length
    old_string = encrypted_text
    new_string = ""
    n.times do
      new_string = old_string[length/2..length-1]
      i = 0
      j = 1
      while i < length/2
        new_string.insert(j, old_string[i])
        i += 1
        j += 2
      end
      old_string = new_string
    end
    new_string
  end
end
