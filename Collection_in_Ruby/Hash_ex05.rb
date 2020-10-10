def list(input)
  i, a = 0, ""
  for x in input
    if i==0
    a += x.values[0]
  elsif i == input.size-1
    a += " & #{x.values[0]}"
    else
    a += ", #{x.values[0]}"
    end
    i += 1
  end
  puts a
end

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''
