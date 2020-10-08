def how_many_times(x,y)

=begin
	if x % y == 0
		puts x / y
	else
		puts x / y + 1
	end
=end

	z =	x % y == 0 ? x / y : x / y + 1
	puts z
end

how_many_times(40,15)
how_many_times(30,10)
how_many_times(80,15)
