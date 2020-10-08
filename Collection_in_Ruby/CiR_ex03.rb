print "how many days u expect for delivery? (1-10 days) >>"
x=gets.chomp.to_i
case x
  when 1 then print "One Day Service\n"
  when 2..4 then print "Regular Service\n"
  when 5..7 then print "Economic Service\n"
  when 8..10 then print "Cargo Service\n"
  else print "undefined input"
end
