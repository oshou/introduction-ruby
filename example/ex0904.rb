# -*- coding: utf-8 -*-

class Student
  def initialize(name,age)
    @name = name
    @age = age
  end

  attr_accessor :name,:age

  def to_s
    "#@name, #@age"
  end
end

tarou = Student.new("田中 太郎",22)
puts "氏名: #{tarou.name}, 年齢: #{tarou.age}歳"

tarou.name = "田中 大作"
tarou.age = 45

puts tarou.name
puts tarou.age

puts "氏名: #{tarou.name}, 年齢: #{tarou.age}歳"
