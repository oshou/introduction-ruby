def fizzbuzz(n)
  if n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

puts fizzbuzz(15)
