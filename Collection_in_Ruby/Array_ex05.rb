
def deep_count(something)
  output = 0

  for i in 0...something.size do
    output += 1
    if something[i].class == Array && something[i].empty? == false
      output += deep_count(something[i])
    end
  end
  #puts output
  return output
end



#deep_count([1, 2, 3]) # will return 3
#
#deep_count(["x", "y", ["z"]])
# # will return 3 elements ("x", "y", ["z"]) in main array
# # plus 1 element ("z") in sub array
# # total = 4 elements

#puts deep_count([1, 2, [3, 4, [5]]])
# total = 7 elements

deep_count([1, 2, [3, 4, [5],3],9])


#deep_count([[[[[[[[[]]]]]]]]])
# total = 8 elements
