numero = {:uno => "one", :dos => "two", :tres => "three"}
number={}
numero.each do |key,value|
  number[value.to_sym] = key.to_s
end

print number,"\n"
