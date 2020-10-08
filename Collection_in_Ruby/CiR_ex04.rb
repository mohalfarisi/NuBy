input = [2,4,6,1,9,5,8]
missing_number=[]
for i in 1..9
  if !input.include?(i)
    puts i
  end
end
