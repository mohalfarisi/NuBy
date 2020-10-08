def mix_fruit(fruits)
	price = 0
	fruits.each do |fruit|

#*case*
		case fruit.capitalize
		when "Banana", "Orange", "Apple", "Lemon", "Grapes"
			price += 5
		when "Avocado", "Strawberry", "Mango"
			price += 7
		else
			price += 9
		end


# --------*.include?(x) method*-------------------------
#		regular = ["Banana", "Orange", "Apple", "Lemon", "Grapes"]
#		special = ["Avocado", "Strawberry", "Mango"]
#		if regular.include?(fruit.capitalize)
#			price += 5
#		elsif special.include?(fruit.capitalize)
#			price += 7
#		else
#			price += 9
#		end

	end
	puts price/fruits.size
end



mix_fruit(["banana", "mango", "Avocado"]) # 6
mix_fruit(["melon", "Mango", "kiwi"]) # 8
mix_fruit(["watermelon","Cherry","Avocado"]) # 8
mix_fruit(["watermelon","LiMe","ToMaTo"]) # 9
mix_fruit(["Blackberry","Coconut","Avocado"]) # 8
mix_fruit(["watermelon","mango"]) # 8
mix_fruit(["Watermelon","pEach"]) # 9
mix_fruit(["watermelon","Orange","Grapes"]) #6
mix_fruit(["watermelon"]) # 9
mix_fruit(["Blackberry","cOcONuT","avoCaDo"]) # 8
