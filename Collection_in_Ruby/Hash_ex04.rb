def string_from_hash(input)
  i, output = 0, ""
  input.each do |key,value|
    i+=1
    output+="#{key} = #{value} #{x = i !=input.size ? "," : ""}"
  end
  puts output
end

string_from_hash({a: 1, b: 2})
# will return "a = 1,b = 2"
