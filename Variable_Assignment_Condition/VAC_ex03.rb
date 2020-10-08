def reverse_words(sentence)
	words = []
	sentence.split(" ").each do |word|

		word = word.reverse unless word.size < 5

#		-------------------------------------------
#		Ternary Operator
#		word = word.size >= 5 ? word.reverse : word
#		-------------------------------------------

	words << word
	end
	puts words.join(" ")
end


reverse_words("Hey fellow scholar")
reverse_words("This is a test")
reverse_words("This is another test")
