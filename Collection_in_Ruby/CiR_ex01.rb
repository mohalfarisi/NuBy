def remove_duplicate(numbers)
  result = []
  numbers.each do |number|
    if !result.include?(number)
      result.push(number)
    end
  end
return result
#print result,"\n"
end

arr=[]
puts "masukkan 10 integer antara 1-9 secara sembarang"
for i in 1..10
  print "#{i}> "
  input = gets.chomp.to_i
  if input > 9 || input < 1
    puts "!!! integer 1-9!!!"
    redo
  else
    arr << input
  end

end

puts "angka rangkap di hapus..."
print remove_duplicate(arr),"\n"
