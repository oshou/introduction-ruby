# -*- coding: utf-8 -*-

class Student
  def initialize(name,age)
    @name = name
    @age = age
  end

  def to_s
    "#{@name}, #{@age}"
  end
end

class StudentBook
  def initialize
    @students = {}
  end

  def setUpStudents
    @students = {
      :tarou => Student.new("田中 太郎",22),
      :jirou => Student.new("佐藤 次郎",24),
      :saburou => Student.new("鈴木 三郎",28)
    }
  end

  def printStudents
    @students.each{|key,value|
      puts "#{key} #{value.to_s}"
    }
  end

  def listAllStudents
    setUpStudents
    printStudents
  end
end

student_book = StudentBook.new

student_book.listAllStudents
