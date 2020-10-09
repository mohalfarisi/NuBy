def unique_sum(input)
  a,output=Hash.new(0),0
  input.each {|i|a[i]+= 1}
  a.each {|key,value| output+=key}
  puts "#{output}"
end

unique_sum([1, 2, 3])
# return 6

unique_sum([1, 3, 8, 1, 8])
# return 12

unique_sum([-1, -1, 5, 2, -7])
# return -1
