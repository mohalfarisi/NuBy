# def group_and_count(input)
#   count, output = 0, Hash.new(0)
#   input=input.sort
#   for i in 0...input.size
#     count += 1
#     if input[i]!=input[i+1]
#       output[input[i]]=count
#       count = 0
#     end
#   end
#   puts "#{output}"
# end

def group_and_count(input)
  output=Hash.new(0)
  input.each  {|i| output[i] += 1 }
  puts "#{output}"
end

x = [1,2,1,2,3,2,3]
group_and_count(x) # == {1=>2, 2=>3, 3=>2}
