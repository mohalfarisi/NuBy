def create_sentence(words)
  i = 0
  sentence = ""
  loop do
    sentence += words[i].to_s
    break if  i == words.size
    sentence += " "
    i += 1
  end
  puts sentence
  return sentence
end

create_sentence(["hello", "world"])

create_sentence(["goodbye", "beautiful", "world"])
