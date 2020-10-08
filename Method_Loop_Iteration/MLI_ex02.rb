def format_phone_number(numbers)
  i = 0
  p_number = "("
  loop do

    break if  i == numbers.size

    if i == 3
      p_number += ") "
    elsif i == 6 || i == 10
      p_number += "-"
    end
    p_number += numbers[i].to_s
    i += 1
  end
  puts p_number
  return p_number
end

print "give your phone number\n>"
x = gets.chomp
format_phone_number(x)

#1, 2, 3, 4, 5, 6, 7, 8 ,9 , 0
