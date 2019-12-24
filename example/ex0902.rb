# -*- coding:utf-8 -*-
class Student
  def initialize(name,age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def to_s
    "#@name, #@age"
  end
end

tarou = Student.new("田中 太郎",22)
jirou = Student.new("佐藤 次郎",24)

puts tarou.to_s
puts jirou.to_s

puts "氏名: #{tarou.name}, 年齢: #{tarou.age}歳"
puts "氏名: #{jirou.name}, 年齢: #{jirou.age}歳"
