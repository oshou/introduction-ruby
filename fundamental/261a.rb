def add(a, b)
  return a + b
end

def hello_world
  return "Hello, World"
end

def greeting(country)
  return 'countryを入力して下さい' if country.nil?

  if country =='Japan'
    'こんにちは'
  else
    'hello'
  end
end

puts add(1, 2)
puts hello_world()
puts greeting(nil)
puts greeting("Japan")
