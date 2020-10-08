hush = {three: "Fizz", five: "Buzz", threefive: "FizzBuzz" }
for i in 1..50
  sim=""
  sim+="three" if i%3 == 0
  sim+="five" if i%5 == 0

  if sim != ""
    puts hush[sim.to_sym]
  else
    puts i
  end

end
