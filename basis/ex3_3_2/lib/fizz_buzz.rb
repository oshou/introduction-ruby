def fizz_buzz(n)
  if n % 15 == 0
    return "Fizz Buzz"
  elsif n % 3 == 0
    return "Fizz"
  elsif n % 5 == 0
    return "Buzz"
  else
    return n.to_s
  end
end
