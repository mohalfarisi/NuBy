def find_longest(numbers)
  
  for x in 0...numbers.size
    z = numbers[x] if x == 0
    a = numbers[x].to_s.size
    z =  a > z.to_s.size ? numbers[x] : z

  end
  puts z
end

find_longest([1, 10, 100])     # return 100
find_longest([9000, 8, 800])   # return 9000
find_longest([8, 900, 500])    # return 900
find_longest([3, 40000, 100])  # 40000
find_longest([1, 200, 100000]) # return 100000)
