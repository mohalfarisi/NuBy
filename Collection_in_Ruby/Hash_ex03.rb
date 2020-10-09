def find_occurrence(input)
  a,output=Hash.new(0),0
  input.each {|i|a[i]+= 1}
  a.each do |key,value|
    output = key
    break if value.odd?
  end
  puts "#{output}"
end

find_occurrence([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
# retturn 5

find_occurrence([1,1,2,-2,5,2,4,4,-1,-2,5])
# return -1

find_occurrence([20,1,1,2,2,3,3,5,5,4,20,4,5])
# return 5

find_occurrence([10])
# return 10

find_occurrence([1,1,1,1,1,1,10,1,1,1,1])
# return 10
