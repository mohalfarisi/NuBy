def high_and_low(numbers)
  numbers = numbers.split(" ")
  for x in 0...numbers.size
    z = numbers[x].to_i
    maks, min = z, z if x == 0
    maks =  maks < z ? z : maks
    min =  min > z ? z : min
  end
  puts "#{maks} #{min}"
end



high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")
# return "542 -214"

high_and_low("1 -1")    # return "1 -1"
high_and_low("1 1")     # return "1 1"
high_and_low("-1 -1")   # return "-1 -1"
high_and_low("1 -1 0")  # return "1 -1"
high_and_low("1 1 0")   # return "1 0"
high_and_low("-1 -1 0") # return "0 -1"
high_and_low("42")      # return "42 42"

# print "give a sequence of numbers >> "
# c=gets.chomp
# high_and_low(c)
