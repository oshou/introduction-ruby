# -*- coding: utf-8 -*-

str = "Twinkle, twinkle, little star,
How I wonder what you are.
Up above the world so high,
Like a diamond in the sky.
Twinkle, twinkle, little star,
How I wonder what you are.."

lines = str.split(/\n/)

puts "youが含まれていた行"
lines.each { |line|
  if line =~ /[Yy]ou/ then
    puts line
  end
}

puts "行末にカンマが含まれていた行"
lines.each {|line|
  if line =~ /i..1/ then
    puts line
  end
}
