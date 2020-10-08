def insert_dash(inum)
  inum=inum.to_s
  output  =""
  for x in 0...inum.size
    output += inum[x]
    x1=inum[x+1].to_i

    if inum[x].to_i.odd? # % 2 != 0
        output += "-" if x1.odd? # % 2 != 0
    end
  end

  puts output
end

insert_dash(454793) # will return: '4547-9-3'
insert_dash(123456) # will return: '123456'
insert_dash(1003567) # will return: '1003-567'
insert_dash(24680) # will return: '24680'
insert_dash(13579) # will return: '1-3-5-7-9'

# print "give a number >> "
# c=gets.chomp
# insert_dash(c)
