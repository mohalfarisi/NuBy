def in_array(words1, words2)

  output = Array.new
  for word2 in words2 do
    for word1 in words1 do
      if word2.include?(word1)
        next if output.include?(word1)
        output.push(word1)
    end
    end
  end

  output = output.sort
  output = output.sort  { |a, b| a <=> b } # Same thing!
  puts "#{output}"
end



a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

in_array(a1, a2)
# will return: ["arp", "live", "strong"]

a1 = ["tarp", "mice", "bull"]
in_array(a1, a2)
# will return: []
