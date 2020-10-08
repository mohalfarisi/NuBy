def kode_rahasia(word)
  letters = "abcdefghijklmnopqrstuvwxyz"
  vowel = ["a", "e", "i", "u", "o"]

  for i in 0...word.size
    j = 0
    until word[i] == letters[j]
      j += 1
    end

    if vowel.include?(word[i])
      word[i] = letters[j - 5]
    else
      if j + 9 < 26
        word[i] = letters[j+9]
      else
        word[i] = letters[j+9-26]
      end
    end
  end
  print word, "\n"
end

kode_rahasia("homework")
